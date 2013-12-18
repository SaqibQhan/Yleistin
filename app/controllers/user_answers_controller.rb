class UserAnswersController < ApplicationController
  before_filter :u_answer_variables

  def save_answers
    user = User.find_by_current_sign_in_ip(@remote_ip)
    if user.blank?
      user = User.new(:current_sign_in_ip => @remote_ip, :up_range => params[:up_range],
                      :down_range => params[:down_range])
      user.save(:validate => false)
    end
    delete_user_answers(user) unless user.blank?
    answers = []
    params[:answers].split(',').each_with_index do |answer, index|
      answers << answer
    end
    user_answers = []
    params[:q_ids].split(',').each_with_index do |question, index|
      user_answers << UserAnswer.new(:question_id => question, :yes => answers[index] == '1' ? true : false,
                                     :no => answers[index] == '0' ? true : false, :user_id => user.id)
    end
    UserAnswer.import user_answers
    user_performance(user)
    render :text => 'ok'
  end

  def compare
    redirect_to root_path if @user.blank? and @link.blank?
    @user_performance = @user.user_performances unless @user.blank?
    @others_performance = []
    @your_performance = []
    @compare_topics = []
    unless @user_performance.blank?
      @user_performance.each do |u_performance|
        performances = UserPerformance.where('user_id != ? and topic_id = ?', @user.id, u_performance.topic_id)
        unless performances.blank?
          @your_performance << u_performance.performance
          @compare_topics << u_performance.topic.title
          performance_sum = performances.sum(:performance)
          @others_performance << (performance_sum.to_f / performances.count).to_f
        end
      end
    end

    @all_performances = []
    @all_topics = []
    Topic.all.each do |topic|
      total_topic_perform = UserPerformance.where(:topic_id => topic.id)
      unless total_topic_perform.blank?
        perform = total_topic_perform.sum(:performance)
        @all_performances << (perform / (total_topic_perform.count).to_f).to_f
        @all_topics << topic.title
      end
    end

  end

  def reset
    @user.destroy
    redirect_to root_path
  end

  private
  def delete_user_answers(user)
    user_answers = UserAnswer.where(:user_id => user.id).load
    unless user_answers.blank?
      user_answers.each do |ans|
        ans.destroy
      end
    end
  end

  def u_answer_variables
    @remote_ip = request.remote_ip
    #@remote_ip = "192.169.0.2"
    @user = User.find_by_current_sign_in_ip(@remote_ip)
    @users = User.all
    @link = params[:link]
    @user_answers = @user.user_answers unless @user.blank?
  end

  protected

  def user_performance(user)
    @user_answers = user.user_answers unless user.blank?
    @user_questions = Question.where(:id => [@user_answers.map { |u_ans| u_ans.question_id }]) unless @user_answers.blank?
    @uniq_questions = @user_questions.order('topic_id').pluck(:topic_id).uniq unless @user_questions.blank?
    @rand_topics = Topic.where(:id => [@uniq_questions]) unless @uniq_questions.blank?
    @performance_by_topic = @rand_topics.map { |topic| 100 }
    u_performance = []
    @rand_topics.each_with_index do |topic, index|
      asked_questions = @user_questions.where(:topic_id => topic.id)
      user_answer = UserAnswer.where(:user_id => user.id, :question_id => [asked_questions.map { |quest| quest.id }])
      user_answer.each do |u_ans|
        @performance_by_topic[index] = @performance_by_topic[index].to_f - (100/asked_questions.count.to_f).to_f if u_ans.no?
      end
      u_performance << UserPerformance.new(:user_id => user.id, :topic_id => topic.id, :performance => @performance_by_topic[index])
    end
    UserPerformance.import u_performance
  end

end

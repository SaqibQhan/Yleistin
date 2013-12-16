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
    render :text => 'ok'
  end

  def compare
    redirect_to root_path if @user.blank? and @link.blank?
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
    @remote_ip = "192.169.1.2"
    @user = User.find_by_current_sign_in_ip(@remote_ip)
    @users = User.all
    @link = params[:link]
    @user_answers = @user.user_answers unless @user.blank?
    @rand_topics = $rand_questions.select(:title, :topic_id).map(&:topic_id).uniq unless $rand_questions.blank?
    puts "AAAAAAAAAAAAAAAAAa",@rand_topics.inspect
  end

end

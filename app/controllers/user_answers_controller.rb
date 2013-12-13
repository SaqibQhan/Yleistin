class UserAnswersController < ApplicationController
  def save_answers
    user = User.find_by_current_sign_in_ip(request.remote_ip)
    if user.blank?
      user = User.new(:current_sign_in_ip => request.remote_ip)
      user.save(:validate => false)
    end
    delete_user_answers(user) unless user.blank?
    answers = []
    params[:answers].split(',').each_with_index do |answer, index|
      answers << answer
    end
    params[:q_ids].split(',').each_with_index do |question, index|
      user_answers = UserAnswer.new(:question_id => question, :yes => answers[index] == '1' ? true : false,
                                    :no => answers[index] == '0' ? true : false, :user_id => user.id)
      user_answers.save
    end

    render :text => 'ok'
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

end

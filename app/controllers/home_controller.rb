class HomeController < ApplicationController
  #before_filter :authenticate_user!
  before_filter :home_variables

  def index
    @questions = Question.all
    random = rand(1...@questions.count)
    @rand_questions = @questions.order("RANDOM()").limit(random)
    $rand_questions = @rand_questions
    redirect_to "/compare" unless @user.blank?
  end

  private

  def home_variables
    @remote_ip = request.remote_ip
    #@remote_ip = "192.169.0.2"
    @user = User.find_by_current_sign_in_ip(@remote_ip)
  end

end

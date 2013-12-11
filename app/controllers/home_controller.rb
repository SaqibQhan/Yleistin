class HomeController < ApplicationController
  #before_filter :authenticate_user!
  def index
    @questions = Question.all
    random = rand(1...@questions.count)
    @rand_questions = @questions.order("RANDOM()").limit(random)
  end

end

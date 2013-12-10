class HomeController < ApplicationController
  #before_filter :authenticate_user!
  def index
    @questions = Question.all
    random = Random.new.rand(1...@questions.count)
    @rand_questions = @questions.order("RAND()").limit(random)
  end

end

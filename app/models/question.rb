class Question < ActiveRecord::Base
  belongs_to :topic
  has_many :user_answers
end

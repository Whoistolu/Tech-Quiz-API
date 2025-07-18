class Submission < ApplicationRecord
  has_many :user_answers
  belongs_to :user
  belongs_to :quiz
end

class Quiz < ApplicationRecord
  has_many :questions
  has_many :submissions

  validates :title, presence: true
end

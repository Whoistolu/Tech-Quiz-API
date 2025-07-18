class Question < ApplicationRecord
  belongs_to :quiz
  has_many :options

  validates :content, presence: true
end

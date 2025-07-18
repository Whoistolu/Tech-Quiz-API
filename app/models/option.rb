class Option < ApplicationRecord
  belongs_to :question
  has_many :options, dependent: :destroy

  validates :content, presence: true
end

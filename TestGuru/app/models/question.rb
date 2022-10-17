class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: nil

  validates :body, presence: true
end

class User < ApplicationRecord
  has_many :user_tests, dependent: nil
  has_many :tests, through: :user_tests

  has_many :created_tests, class_name: 'Test', foreign_key: :creator_id, dependent: nil, inverse_of: :users

  validates :email, presence: true, format: Devise.email_regexp

  def find_test_by_level(level)
    tests.where(level: level)
  end
end

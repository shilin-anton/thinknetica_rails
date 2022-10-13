class User < ApplicationRecord
  has_many :user_tests, dependent: nil
  has_many :tests, through: :user_tests

  belongs_to :test, foreign_key: :created_test_id, inverse_of: :users

  def find_test_by_level(level)
    tests.where(level: level)
  end
end

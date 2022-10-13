class Test < ApplicationRecord
  belongs_to :category

  has_many :user_tests, dependent: nil
  has_many :users, through: :user_tests
  has_many :questions, dependent: :destroy
  has_one :creator, class_name: 'User', foreign_key: :created_test_id, dependent: nil, inverse_of: :tests

  def self.find_by_category(category_title)
    Test.joins(:category)
        .where('categories.title like ?', "%#{category_title}%")
        .order('tests.title DESC').pluck(:title)
  end
end

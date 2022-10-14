class Test < ApplicationRecord
  belongs_to :category

  has_many :user_tests, dependent: nil
  has_many :users, through: :user_tests
  has_many :questions, dependent: :destroy

  belongs_to :creator, class_name: "User", foreign_key: :creator_id, inverse_of: :tests, optional: true

  def self.find_by_category(category_title)
    Test.joins(:category)
        .where('categories.title like ?', "%#{category_title}%")
        .order('tests.title DESC').pluck(:title)
  end
end

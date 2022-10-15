class Test < ApplicationRecord
  belongs_to :category

  has_many :user_tests, dependent: nil
  has_many :users, through: :user_tests
  has_many :questions, dependent: :destroy

  belongs_to :creator, class_name: 'User', inverse_of: :tests, optional: true

  validates :title, presence: true,
                    uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 },
                    presence: true

  scope :easy_tests, -> { where(level: 0..1) }
  scope :medium_tests, -> { where(level: 2..4) }
  scope :hard_tests, -> { where(level: 5..Float::INFINITY) }
  scope :find_by_category, lambda { |category_title|
                             joins(:category)
                               .where('categories.title like ?', "%#{category_title}%")
                               .order('tests.title DESC').pluck(:title)
                           }
end

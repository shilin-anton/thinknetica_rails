class Category < ApplicationRecord
  has_many :test, dependent: nil

  validates :title, presence: true

  default_scope { order(title: :asc) }
end

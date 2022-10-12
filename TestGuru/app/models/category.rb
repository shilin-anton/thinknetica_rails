class Category < ApplicationRecord
  has_many :test, dependent: nil
end

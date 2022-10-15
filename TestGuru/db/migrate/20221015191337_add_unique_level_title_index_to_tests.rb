class AddUniqueLevelTitleIndexToTests < ActiveRecord::Migration[6.1]
  def change
    add_index :tests, [:level, :title], unique: true
  end
end

class AddConstraintToTest < ActiveRecord::Migration[6.1]
  def up
    change_column :tests, :title, :text, null: false
    change_column :tests, :level, :integer, null: false
  end

  def down
    change_column :tests, :title, :text, null: true
    change_column :tests, :level, :integer, null: true
  end
end

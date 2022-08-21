class AddConstraintToCategory < ActiveRecord::Migration[6.1]
  def up
    change_column :categories, :title, :text, null: false
  end

  def down
    change_column :categories, :title, :text, null: true
  end
end

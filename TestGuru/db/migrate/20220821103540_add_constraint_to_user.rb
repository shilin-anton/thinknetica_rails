class AddConstraintToUser < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :first_name, :text, null: false
  end

  def down
    change_column :users, :first_name, :text, null: true
  end
end

class AddConstraintToQuestion < ActiveRecord::Migration[6.1]
  def up
    change_column :questions, :body, :text, null: false
  end

  def down
    change_column :questions, :body, :text, null: true
  end
end

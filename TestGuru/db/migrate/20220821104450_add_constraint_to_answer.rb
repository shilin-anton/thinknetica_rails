class AddConstraintToAnswer < ActiveRecord::Migration[6.1]
  def up
    change_column :answers, :correct, :boolean, null: false
    change_column :answers, :user_id, :integer, null: false
    change_column :answers, :question_id, :integer, null: false
  end

  def down
    change_column :answers, :correct, :boolean, null: true
    change_column :answers, :user_id, :integer, null: true
    change_column :answers, :question_id, :integer, null: true
  end
end

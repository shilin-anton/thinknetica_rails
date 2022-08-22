class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.boolean :correct, null: false, default: false
      t.references :user, foreign_key: { to_table: 'users' }, null: false
      t.references :question, foreign_key: { to_table: 'questions' }, null: false

      t.timestamps
    end
  end
end

class CreateQuestionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :body, null: false
      t.references :test_id, foreign_key: { to_table: 'tests' }

      t.timestamps
    end
  end
end

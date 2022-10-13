class CreateUserTests < ActiveRecord::Migration[6.1]
  def change
    create_table :user_tests do |t|
      t.references :user, foreign_key: { to_table: 'users' }
      t.references :test, foreign_key: { to_table: 'tests' }

      t.timestamps
    end
  end
end

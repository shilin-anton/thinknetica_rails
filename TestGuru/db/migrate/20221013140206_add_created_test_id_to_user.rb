class AddCreatedTestIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :created_test, foreign_key: { to_table: 'tests' }
  end
end

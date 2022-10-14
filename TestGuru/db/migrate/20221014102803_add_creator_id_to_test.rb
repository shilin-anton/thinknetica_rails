class AddCreatorIdToTest < ActiveRecord::Migration[6.1]
  def change
    add_reference :tests, :creator, foreign_key: { to_table: 'users' }, default: nil
  end
end

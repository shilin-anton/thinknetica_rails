class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :surname
      t.boolean :is_admin
      t.integer :score

      t.timestamps
    end
  end
end

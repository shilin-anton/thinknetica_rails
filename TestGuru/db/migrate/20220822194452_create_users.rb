class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :first_name, null: false
      t.text :surname
      t.boolean :is_admin, null: false, default: false

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.boolean :correct, null: false, default: false
      t.text :answer
      t.references :question, foreign_key: { to_table: 'questions' }

      t.timestamps
    end
  end
end

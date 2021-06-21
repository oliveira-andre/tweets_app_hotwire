# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :email, null: false
      t.string :encrypted_password, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end

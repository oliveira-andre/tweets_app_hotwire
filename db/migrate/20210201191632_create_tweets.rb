# frozen_string_literal: true

class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :body, null: false
      t.integer :likes
      t.integer :status, null: false, default: 0
      t.references :user, null: false, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end

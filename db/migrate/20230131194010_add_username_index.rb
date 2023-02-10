# frozen_string_literal: true

class AddUsernameIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :username, unique: true
  end
end

# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def self.up
    # Check if the column exists before adding it
    unless column_exists?(:users, :email)
      change_table :users do |t|
        ## Database authenticatable
        t.string :email, null: false, default: ""

        ## Other Devise columns (e.g., encrypted_password, reset_password_token, etc.)

        ## Rememberable
        t.datetime :remember_created_at

        ## Uncomment and modify as needed for other Devise modules
      end
    end

    # Add index if the column was added
    add_index :users, :email, unique: true unless index_exists?(:users, :email)

    # Add other indexes for Devise columns like reset_password_token
    add_index :users, :reset_password_token, unique: true unless index_exists?(:users, :reset_password_token)
  end

  def self.down
    # Define rollback if needed
    # For example, remove the columns and indexes added in self.up
    if column_exists?(:users, :email)
      remove_column :users, :email
    end

    # Add rollback for other columns and indexes as needed
    # Example: remove_index :users, :reset_password_token
  end
end

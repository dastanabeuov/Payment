# frozen_string_literal: true

class AddMerchantAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :status, :boolean, default: false
    add_column :users, :total_transaction_sum, :integer, default: 0
    add_column :users, :type, :string, null: false, default: 'User'
    add_index  :users, :type
  end
end

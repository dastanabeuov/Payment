class Transaction < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, id: :uuid  do |t|
      t.integer :amount, default: 0
      t.integer :status, default: 0
      t.string  :customer_email
      t.string  :customer_phone
      t.uuid    :merchant_id
      t.timestamps
    end

    add_index :transactions, :merchant_id
  end
end

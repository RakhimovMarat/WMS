class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :quantity
      t.integer :flow
      t.integer :item_id
      t.timestamps
    end
  end
end

class AddMinimalStockToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :minimal_stock, :integer
  end
end

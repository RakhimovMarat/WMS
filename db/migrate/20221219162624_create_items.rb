class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :number
      t.string :description
      t.integer :address_id
      t.timestamps
    end
    add_index :items, :number
  end
end

class AddResponsibleToStock < ActiveRecord::Migration[7.0]
  def change
    add_column :stocks, :responsible, :string
  end
end

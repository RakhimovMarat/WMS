class StockSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :flow, :item_id, :responsible

  belongs_to :item
end

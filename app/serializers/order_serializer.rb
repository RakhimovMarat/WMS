class OrderSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :quantity

  belongs_to :item
end

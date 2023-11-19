class AddressSerializer < ActiveModel::Serializer
  attributes :id, :cell

  has_one :item
end

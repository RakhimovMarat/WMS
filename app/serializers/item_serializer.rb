class ItemSerializer < ActiveModel::Serializer
  attributes :id, :number, :description, :minimal_stock, :short_description

  belongs_to :address

  has_many :stocks

  def short_description
    object.description.truncate(8)
  end  
end

class Item < ApplicationRecord
  validates :number, :description, presence: true

  def self.search(search)
      if search
        where(["number LIKE ?","%#{search}%"])
      else
        Item.all.order(:number)
      end
  end
end

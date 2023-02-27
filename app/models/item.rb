# frozen_string_literal: true

class Item < ApplicationRecord
  validates :number, :description, presence: true
  validates :number, uniqueness: true
  validates :address_id, uniqueness: true

  belongs_to :address, optional: true
  has_many :stocks, dependent: :destroy
  has_many :orders, dependent: :destroy

  def self.search(search)
    if search
      where(['number LIKE ?', "%#{search}%"])
    else
      Item.all.order(:number)
    end
  end
end

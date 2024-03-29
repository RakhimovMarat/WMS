# frozen_string_literal: true

class Item < ApplicationRecord
  validates :number, :description, presence: true
  validates :number, uniqueness: true
  validates :address_id, uniqueness: true

  belongs_to :address, optional: true
  has_many :stocks, dependent: :destroy
  has_many :orders, dependent: :destroy

  def self.ransackable_attributes(_auth_object = nil)
    %w[address_id created_at description id minimal_stock number updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[address orders stocks]
  end
end

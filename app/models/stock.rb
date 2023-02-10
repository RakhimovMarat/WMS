# frozen_string_literal: true

class Stock < ApplicationRecord
  validates :quantity, :flow, presence: true

  belongs_to :item, optional: true

  enum flow: { receipt: 1, expense: -1 }     # enumeration to in/out transactions
end

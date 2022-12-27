class Address < ApplicationRecord
	validates :cell, uniqueness: true
	validates :cell, presence: true

	has_one :item
end

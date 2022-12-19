class Item < ApplicationRecord
	validates :number, :description, presence: true
end

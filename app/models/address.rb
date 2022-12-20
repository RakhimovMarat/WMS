class Address < ApplicationRecord
	validates :cell, uniqueness: true
	validates :cell, presence: true
end

require "rails_helper"

describe Item do
	describe "validations" do
		it { should validate_presence_of :number }
		it { should validate_presence_of :description }
	end

	describe "assotiations" do
		it { should have_many :stocks }
		it { should belong_to(:address).optional }
	end
end
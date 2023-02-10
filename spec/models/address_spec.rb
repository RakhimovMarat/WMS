# frozen_string_literal: true

require 'rails_helper'

describe Address do
  describe 'validations' do
    it { should validate_presence_of :cell }
    it { should validate_uniqueness_of :cell }
  end

  describe 'assotiations' do
    it { should have_one :item }
  end
end

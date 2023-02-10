# frozen_string_literal: true

require 'rails_helper'

describe Stock do
  describe 'assotiations' do
    it { should belong_to(:item).optional }
  end

  describe 'enumerable' do
    it { should define_enum_for(:flow).with_values(receipt: 1, expense: -1).backed_by_column_of_type(:integer) }
  end
end

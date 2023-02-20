# frozen_string_literal: true

class AddressesController < ApplicationController
  before_action :authenticate_user!

  def index
    @address = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new; end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:success] = 'Address was saved'
      redirect_to @address
    else
      flash.now[:error] = 'Please fill all fields'
      render action: 'new'
    end
  end

  private

  def address_params
    params.require(:address).permit(:cell)
  end
end

# frozen_string_literal: true

class StocksController < ApplicationController
  before_action :authenticate_user!

  def new; end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to items_path
    else
      render action: 'new'
    end
  end

  private

  def stock_params
    params.require(:stock).permit(:quantity, :flow, :item_id, :responsible).merge(responsible: current_user.username)
  end
end

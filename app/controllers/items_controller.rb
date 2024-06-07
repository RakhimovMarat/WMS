# frozen_string_literal: true

class ItemsController < ApplicationController # rubocop:disable Style/Documentation
  before_action :find_item, only: %i[show edit update destroy]

  def index
    @q = Item.ransack(params[:q])
    @pagy, @items = pagy(@q.result.includes(:address), items: 5)
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = 'Item was saved'
      redirect_to @item
    else
      flash.now[:error] = 'Please fill all fields'
      render action: 'new'
    end
  end

  def show; end

  def edit
    authorize @item
    render action: 'edit'
  end

  def update
    if @item.update(item_params)
      flash[:success] = 'Item was updated'
      redirect_to @item
    else
      flash.now[:error] = 'Please fill all fields'
      render action: 'edit'
    end
  end

  def destroy
    authorize @item
    return unless @item.destroy.destroyed?

    flash[:error] = 'Item was deleted'
    redirect_to item_path
  end

  # display transactions and available stock for each item
  def transactions
    @pagy, @stock = pagy(Stock.where(item_id: params[:id]).includes(:item), items: 5)
    @available_amount = @stock.sum('flow * quantity')
  end

  private

  def item_params
    params.require(:item).permit(:number, :description, :address_id, :minimal_stock)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end

# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_item, only: %i[show edit update destroy]

  def index
    @item = Item.search(params[:search])
    @item = @item.includes(:address)     # adding eager load
    @stock = Stock.group(:item_id).sum('flow * quantity')
  end

  def new
    @item = Item.new
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
    return unless @item.destroy.destroyed?

    flash[:error] = 'Item was deleted'
    redirect_to item_path
  end

  private

  def item_params
    params.require(:item).permit(:number, :description, :address_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end

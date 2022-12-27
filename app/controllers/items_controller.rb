class ItemsController < ApplicationController
  before_action :find_item, only: %i[show edit update destroy]

  def index
	  @item = Item.search(params[:search])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render action: 'new'
    end
  end

  def show; end

  def edit
    render action: 'edit'
  end

  def update
    if @item.update(item_params)
      redirect_to @item
    else
      render action: 'edit'
    end
  end

  def destroy
    if @item.destroy.destroyed?
      redirect_to item_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:number, :description, :address_id)
  end

  def find_item
  	@item = Item.find(params[:id])
  end
end

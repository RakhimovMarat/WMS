class ItemsController < ApplicationController
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

  def show
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:number, :description)
  end
end

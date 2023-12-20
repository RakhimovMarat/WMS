class Api::V1::ItemsController < Api::V1::BaseController
  skip_before_action :doorkeeper_authorize!, on: :index

  def index
    @items = Item.all.limit(5)
    respond_with @items
  end

  def show
    find_item
    render json: @item
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:number, :description, :address_id, :minimal_stock)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end

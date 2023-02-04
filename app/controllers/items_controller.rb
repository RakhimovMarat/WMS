class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_item, only: %i[show edit update destroy]

  def index
	  @item = Item.search(params[:search])
    @item = @item.includes(:address)     #adding eager load
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "Part was saved"
      redirect_to @item
    else
      flash.now[:error] = "Please fill all fields"
      render action: 'new'
    end
  end

  def show; end

  def edit
    render action: 'edit'
  end

  def update
    if @item.update(item_params)
      flash[:success] = "Part was updated"
      redirect_to @item
    else
      flash.now[:error] = "Please fill all fields"
      render action: 'edit'
    end
  end

  def destroy
    if @item.destroy.destroyed?
      flash[:error] = "Part was deleted"
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

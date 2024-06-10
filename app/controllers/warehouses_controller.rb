class WarehousesController < ApplicationController

  def index
    @warehouses = Warehouse.all
  end

  def new; end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    if @warehouse.save
      flash[:success] = 'Warehouse was saved'
      redirect_to @warehouse
    else
      flash.now[:error] = 'Incorrect data'
      render action: 'new'
    end
  end

  def show; end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name)
  end
end

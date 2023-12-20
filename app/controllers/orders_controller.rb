class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @order = Order.all
  end

  def new; end

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = 'Order was saved'
      redirect_to orders_path
    else
      flash.now[:error] = 'Please fill all fields'
      render action: 'new'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    return unless @order.destroy.destroyed?

    flash[:error] = 'Order was deleted'
    redirect_to order_path
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :item_id)
  end
end

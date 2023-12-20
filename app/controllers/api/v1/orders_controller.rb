class Api::V1::OrdersController < Api::V1::BaseController
  skip_before_action :doorkeeper_authorize!, on: :index

  def index
    @orders = Order.all.limit(5)
    respond_with @orders
  end
end

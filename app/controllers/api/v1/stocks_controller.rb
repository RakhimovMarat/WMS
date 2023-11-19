class Api::V1::StocksController < Api::V1::BaseController

  skip_before_action :doorkeeper_authorize!, on: :index

  def index
    @stocks = Stock.all.limit(5)
    respond_with @stocks
  end
end

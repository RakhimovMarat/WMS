class Api::V1::ItemsController < Api::V1::BaseController

  skip_before_action :doorkeeper_authorize!, on: :index

  def index
    @items = Item.all.limit(5)
    respond_with @items
  end  
end   
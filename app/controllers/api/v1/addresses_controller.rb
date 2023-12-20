class Api::V1::AddressesController < Api::V1::BaseController
  skip_before_action :doorkeeper_authorize!, on: :index

  def index
    @addresses = Address.all.limit(5)
    respond_with @addresses
  end
end

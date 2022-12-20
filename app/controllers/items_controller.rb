class ItemsController < ApplicationController
	def index
		@item = Item.search(params[:search])
	end
end

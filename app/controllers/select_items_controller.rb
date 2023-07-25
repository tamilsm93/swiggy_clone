class SelectItemsController < ApplicationController
	def index
		@hotel = Hotel.find_by(id: 1)
		@items = @hotel.items.all.where(menubar_id: params["item"]["menubar_id"].to_i))
		redirect_to items_path
	end
end

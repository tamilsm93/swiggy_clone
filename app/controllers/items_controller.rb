class ItemsController < ApplicationController

	def index
		hotel_id = params["hotel_id"] || params[:id]
		@hotel = Hotel.find_by(id:  hotel_id.to_i)
		@items = @hotel.items&.all&.where(menubar_id: params[:id] ||  params["item"]["menubar_id"]) 
	end

	def new
		@item = Hotel&.items.new
	end
	def show
		@item = Hotel&.item.find(params[:id])	
	end

	def category_item
		@hotel = Hotel.find_by(id: 1)
		@items = @hotel.items&.all.where(menubar_id: params[:id] ||  params["item"]["menubar_id"]) 
		redirect_to items_path
	end


	def create	
		@item = @hotel&.items.create(item_params)
		redirect_to items_path
	end


	private
	def item_params
		params.require(:item).permit(:name, :description, :price, :hotel_id)
	end
end

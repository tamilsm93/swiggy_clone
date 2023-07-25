class ViewCartsController < ApplicationController
	def index
	    @cart_items = CartItem.all.where(user_id: current_user.id)
	    @cart_amount = @cart_items.pluck(:price).sum 
	end
end

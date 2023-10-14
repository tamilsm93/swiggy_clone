class CartItemsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
	      cart_item = Item.find_by(id: params[:id])
	      current_user.cart_items.create(name: cart_item.name, price: cart_item.price, user_id: 1)
	end

	def create	
		current_user.cart_items.create(name: cart_item.name, price: cart_item.price, user_id: current_user.id)

	end

	def destroy
		item_id = params[:id].to_i
		if 
		item = CartItem.find_by(id: item_id) 
		item.destroy
		elsif params[:id] == "bulk_items" || params[:id] == "order_items" 
			cart_items = current_user.cart_items
			price = current_user.cart_items.pluck(:price).sum
			items = cart_items.pluck(:name).join(',')
				cart_items.each do |item|
					item.delete				
				end
				twilio_message(items, price) if params[:id] == "order_items" 			
		end	
		redirect_to view_carts_path
	end


	def twilio_message(message_items, cost)
		
		account_sid = Rails.application.credentials[:twilio][:account_sid]
		auth_token =  Rails.application.credentials[:twilio][:auth_token]
		@client = Twilio::REST::Client.new(account_sid, auth_token)

		message = message_items.split(',').join(' ')
		cost    = cost.to_s

		text  =  'The items are' + message_items + ' ' + 'price is'  + ' ' + cost +  'in 10 - 15 mins'
		message = @client.messages.create(
			from: '+15737993581',
			to: '+919080790814',
			body:  text
		)
		puts message.sid
	end
end

class TwilioMessageService

	def initialize(account_sid, auth_token)
	  @account_sid = account_sid
	  @auth_token = auth_token
	  @client = Twilio::REST::Client.new(@account_sid, @auth_token)
	 
	end


	def send_message(message_items, cost)
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
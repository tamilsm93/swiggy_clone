class EmailWorker < Sidekiq::Worker
	# include Sidekiq::Worker
      
	def perform(user_id)
	  # Your email sending logic goes here
	  # For example, you might use ActionMailer to send the email
	  user = User.find(user_id)
	  UserMailer.welcome_email(user).deliver_now
	  binding.pry 
	end
      end
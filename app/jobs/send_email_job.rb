class SendEmailJob < ApplicationJob
  # queue_as :default
    include Sidekiq::Worker

  def perform(user_id)
    # Do something later
    user = User.find(user_id)
    UserMailer.perform_async(@user.id)
    binding.pry
  end
end

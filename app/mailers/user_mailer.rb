class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user
    mail(to: @user.mail, subject: 'Welcome to my swiggy_app')
  end

  def password_reset(user)
    @user = user
    mail(to: @user.mail, subject: 'Password reset')
  end
end

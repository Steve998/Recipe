class RecipeMailer < ApplicationMailer
  default from: 'notifications@agile-brushlands-3993.herokuapp.com'

  def welcome_email(user)
    @user = user
    @url = 'http://agile-brushlands-3993.herokuapp.com'
    mail(to: @user.email, subject: 'test email for new user')
  end
end

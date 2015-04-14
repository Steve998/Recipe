class RecipeMailer < ApplicationMailer
  default from: "steve07461@hotmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://www.google.com'
    mail(to: @user.email, subject: 'test email for new user')
  end
end

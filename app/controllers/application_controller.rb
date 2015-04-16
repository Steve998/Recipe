class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :authenticate, :current_user


  def authenticate_admin_user!
   redirect_to root_path if !signed_in? || !current_user.admin?
  end

  helper_method :current_user, :signed_in?

  def current_user
   @current_user ||= User.find_by(id: session[:user_id])

  end

  def authenticate
    if signed_in?
      return true
    else
      flash[:notice] = 'Please sign in first.'
      redirect_to login_path
    end
  end

  def signed_in?
   return true if current_user
  end

end

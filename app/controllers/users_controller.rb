class UsersController < ApplicationController


def index
  @user = User.all
end
  def new
    @user = User.new(params[:user])

  end

  def show
    @user = User.find(params[:id])

  end

  def create
    @user = User.new(user_params)
    @user.admin = false
    if @user.save
      sign_in @user
      flash[:success] = "This is Create User "
      redirect_to @user
    else
      render 'new'
    end
  end

  def sign_in(user)
    session[:user_id] = user.id
  end

  private

   def user_params
     params.require(:user).permit(:name, :email, :password,
                                  :password_confirmation)
   end
end

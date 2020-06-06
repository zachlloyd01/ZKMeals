class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  def new
    @user = User.new
    @user.role = "user"
  end

  def create
    @user = User.create(params.require(:user).permit(:email, :password, :name, :school, :address))
    @user.role = "user"
   session[:user_id] = @user.id
   redirect_to root_path
  end
end

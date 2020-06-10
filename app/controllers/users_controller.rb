class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  def new
    @user = User.new
    @user.role = "user"
  end

  def create
    @user = User.new
    @user.name = params["name"]
    @user.email = params["email"]
    @user.password_digest = params["password"]
    @user.school = params["school"]
    @user.address = params["address"]
    @user.role = "user"
    @user.save
   session[:user_id] = @user.id
   redirect_to root_path
  end
end

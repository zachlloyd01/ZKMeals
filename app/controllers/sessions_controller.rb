class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  def new
  end

  def create
    @user = User.find_by(email: params[:email]) # Find user by email

    if @user && @user.authenticate(params[:password]) # If user exists and their password is correct
      session[:user_id] = @user.id # Set the user session to the current user
      redirect_to root_path # Go Home
    else
      redirect_to '/login' # Back to login!!
    end
  end

  def login
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end

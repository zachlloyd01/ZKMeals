class ApplicationController < ActionController::Base

  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id]) #Find user by session's user ID
  end

  def logged_in?
    !current_user.nil? #Check current user is logged in.
  end

  def authorized
    redirect_to '/login' unless logged_in?
  end

end

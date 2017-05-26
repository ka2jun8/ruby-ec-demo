class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :login
  
  def login
    # logger.debug("user_id")
    # logger.debug(session[:user_id])
    if session[:user_id].blank?
      redirect_to "/users/login"
    else
      @user_id = session[:user_id]
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  helper_method :current_user


end

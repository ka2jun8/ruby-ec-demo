class ApplicationController < ActionController::Base
  # CSRFのauthenticate_tokenを用意しないとsessionクリアされる
  # 厄介なのでコメントアウトしとく
  # http://tsurugeek.hatenablog.jp/entry/20100529/1275124622
  # protect_from_forgery with: :exception
  # protect_from_forgery :except => [:users]

  before_action :login
  
  def login
    puts "session: #{session[:user_id]}"
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

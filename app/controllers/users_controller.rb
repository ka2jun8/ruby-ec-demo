require 'net/http'

class UsersController < ApplicationController
  def index
  end

  def login
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

  def register
  end

  def setting
    @user_id = session[:user_id]
  end

  def signin
    @user = User.find_by(name: params[:user][:name])
    if @user.name.blank?
      redirect_to "/users/login"
    else
      session[:user_id] = @user.id
      redirect_to "/"
    end
  end

  def create
    # atesaki = "http://localhost:9003/v1/system/objects/"+params[:user][:smoid]
    # uri = URI.parse(atesaki)
    # http = Net::HTTP.new(uri.host, uri.port)
    # res = http.start {
    #   http.get(uri.request_uri)
    # }

    res = Hash.new
    res.code = "200"
    res.body = "test"

    # logger.debug "res.to_yaml"
    # logger.debug res.to_yaml
    # logger.debug res.code

    if res.code == "200"
      # result = JSON.parse(res.body)
      @user = User.new
      @user.name = params[:user][:name]
      @user.smoid = params[:user][:smoid]
      session[:user_id] = @user.id
      @user.save
      redirect_to "/"
    else
      puts "OMG!! #{res.code} #{res.message}"
      redirect_to "/"
    end

  end

end

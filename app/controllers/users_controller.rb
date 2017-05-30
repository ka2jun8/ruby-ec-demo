require 'net/http'

class UsersController < ApplicationController
  def index
    redirect_to "/users/login"
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

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def signin
    @user = User.find_by(name: params[:name])

    if @user.name.blank?
      redirect_to "/users/login"
    else
      if @user.password != params[:password]
        redirect_to "/users/login"
      else
        session[:user_id] = @user.id
        puts "成功: #{session[:user_id]}"
        redirect_to "/"
      end
    end
  end

  def create
    # logger.debug params.to_yaml
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]
    @user.mail = params[:mail]
    @user.address = params[:address]
    @user.phone = params[:phone]
    @user.credit = params[:credit]
    session[:user_id] = @user.id

    if @user.save
      redirect_to "/"
    else 
      redirect_to "/users/register"
    end

  end

end

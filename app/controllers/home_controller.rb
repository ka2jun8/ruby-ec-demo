class HomeController < ApplicationController
  def index
    @user_id = session[:user_id]
    if @user_id.blank?
      @current_user = current_user(session[:user_id])
      redirect_to "/users/login"
    else
      @items = Item.where(active: true)
    end
  end

  def add_item
    @user = User.find(session[:user_id])
    if @user.cart?
      cart = @user.cart.split(",")
      cart.push(params[:item_id])
      @user.cart = cart.join(",")
    else 
      cart = Array.new
      cart.push(params[:item_id])
      @user.cart = cart.join(",")
    end
    @user.save
    redirect_to "/home/index"
  end

  def delete_item
    @user = User.find(session[:user_id])
    cart = @user.cart.split(",")
    cart.delete(params[:item_id])
    @user.cart = cart.join(",")
    @user.save
    redirect_to "/home/index"
  end

end

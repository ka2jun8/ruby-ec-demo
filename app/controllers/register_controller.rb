class RegisterController < ApplicationController
  def cart
    @user = User.find(session[:user_id])
    if @user.cart.blank?
      @items = nil
    else
      @items = Array.new
      @user.cart.split(",").each do |itemid|
        @items.push(Item.find(itemid))
      end
    end
  end

  def pay
    @user = User.find(session[:user_id])
    if @user.cart.blank?
      @items = nil
    else
      # req_credit = "http://localhost:9001/v1/service/data/"+@user.smoid+"/credit"
      # uri = URI.parse(req_credit)
      # http = Net::HTTP.new(uri.host, uri.port)
      # res = http.start {
      #   http.get(uri.request_uri)
      # }
      # if res.code == "200"
      #   @credit = res.body

      #   @items = Array.new
      #   @user.cart.split(",").each do |itemid|
      #     @items.push(Item.find(itemid))
      #   end
      # else
      #   puts "OMG!! #{res.code} #{res.message}"
      #   redirect_to "/"
      # end
    end

  end


  def arigato
    #ここで宅配業者にpushする

  end
end

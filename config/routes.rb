Rails.application.routes.draw do
  devise_for :customers
  get 'register/cart'

  get 'register/pay'

  get 'register/arigato'

  get 'item/index'

  get 'home/index'
  root 'home#index'

  post "/home/add_item/:item_id" => "home#add_item"
  post "/home/delete_item/:item_id" => "home#delete_item"

  get 'users/index'

  get 'users/setting'
  post "users/setting" => "users#setting"

  get 'users/login'
  post "users/login" => "users#signin"

  get "users/logout" => "users#logout"

  get 'users/register'
  post "users/register" => "users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

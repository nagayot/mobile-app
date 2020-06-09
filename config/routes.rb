Rails.application.routes.draw do
  devise_for :users

  root 'mobiles#index'
end

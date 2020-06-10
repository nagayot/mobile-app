Rails.application.routes.draw do
  
  devise_for :users

  resources :docomo,   only: [:index]
  resources :softbank, only: [:index]
  resources :au,       only: [:index]
  resources :rmobile,  only: [:index]

  root 'mobiles#show'
end

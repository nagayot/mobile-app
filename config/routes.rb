Rails.application.routes.draw do
  
  devise_for :users, comtrollers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  get '/logout', to: 'mobiles#logout_page'

  resources :mobile,   only: [:show]
  resources :docomo,   only: [:index]
  resources :softbank, only: [:index]
  resources :au,       only: [:index]
  resources :rmobile,  only: [:index]

  root 'mobiles#show'
end

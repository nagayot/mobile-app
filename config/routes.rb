Rails.application.routes.draw do
  
  devise_for :users, comtrollers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  get '/logout', to: 'mobiles#logout_page'
  
  get '/docomo/xperia10II', to: 'docomo#Xperia10II'
  get '/docomo/GalaxyA41', to: 'docomo#GalaxyA41'
  get '/docomo/LGstyle3', to: 'docomo#LGstyle3'
  get '/docomo/AQUOSsense3', to: 'docomo#AQUOSsense3'
  get '/docomo/GalaxyA20', to: 'docomo#GalaxyA20'
  get '/docomo/arrowsBe4', to: 'docomo#arrowsBe4'

  get '/docomo/Xperia5', to: 'docomo#Xperia5'
  get '/docomo/GalaxyS10', to: 'docomo#GalaxyS10'
  get '/docomo/GalaxyS10plus', to: 'docomo#GalaxyS10plus'
  get '/docomo/HUAWEIP30Pro', to: 'docomo#HUAWEIP30Pro'

  get '/docomo/GalaxyS205G', to: 'docomo#GalaxyS205G'
  get '/docomo/AQUOSR5G', to: 'docomo#AQUOSR5G'
  get '/docomo/Xperia1II', to: 'docomo#Xperia1II'
  get '/docomo/LGV60ThinQ5G', to: 'docomo#LGV60ThinQ5G'
  get '/docomo/GalaxyS20plus5G', to: 'docomo#GalaxyS20plus5G'
  get '/docomo/arrows5G', to: 'docomo#arrows5G'




  resources :mobile,   only: [:show]
  resources :docomo,   only: [:index]
  resources :softbank, only: [:index]
  resources :au,       only: [:index]
  resources :rmobile,  only: [:index]

  root 'mobiles#show'
end

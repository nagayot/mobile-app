Rails.application.routes.draw do
  
  devise_for :users, comtrollers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  get '/logout', to: 'mobiles#logout_page'
  get 'favorites', to: 'favorites#index'

  get '/docomo/all', to: 'mobiles#docomoall'
  get '/docomo/xperia10II', to: 'mobiles#Xperia10II'
  get '/docomo/GalaxyA41', to: 'mobiles#GalaxyA41'
  get '/docomo/LGstyle3', to: 'mobiles#LGstyle3'
  get '/docomo/AQUOSsense3', to: 'mobiles#AQUOSsense3'
  get '/docomo/GalaxyA20', to: 'mobiles#GalaxyA20'
  get '/docomo/arrowsBe4', to: 'mobiles#arrowsBe4'

  get '/docomo/Xperia5', to: 'mobiles#Xperia5'
  get '/docomo/GalaxyS10', to: 'mobiles#GalaxyS10'
  get '/docomo/GalaxyS10plus', to: 'mobiles#GalaxyS10plus'
  get '/docomo/HUAWEIP30Pro', to: 'mobiles#HUAWEIP30Pro'

  get '/docomo/GalaxyS205G', to: 'mobiles#GalaxyS205G'
  get '/docomo/AQUOSR5G', to: 'mobiles#AQUOSR5G'
  get '/docomo/Xperia1II', to: 'mobiles#Xperia1II'
  get '/docomo/LGV60ThinQ5G', to: 'mobiles#LGV60ThinQ5G'
  get '/docomo/GalaxyS20plus5G', to: 'mobiles#GalaxyS20plus5G'
  get '/docomo/arrows5G', to: 'mobiles#arrows5G'


  resources :mobiles,     only: [:show, :index] do
    collection do
      post :create_favorite
      post :destroy_favorite
    end
  end

  resources :softbanks,   only: [:index]

  resources :aus,         only: [:index]

  resources :rmobiles,    only: [:index]

  resources :users,       only: [:show] do
    collection do
      get :user_favorites
    end
  end

  root 'mobiles#show'
end

Rails.application.routes.draw do
  root 'monsters#index'

  get '/monsters', to: 'monsters#index'

  get '/monsters/:name', to: 'monsters#show'

  get '/locations', to: 'locations#index'
 
  get '/locations/:name', to: 'locations#show'

  get '/ailments', to: 'ailments#index'

  get '/ailments/:name', to: 'ailments#show'

  # Resources to provide a Restful path
  resources :monsters do
    get '/page/:page', action: :index, on: :collection
  end

  resources :locations do
    get '/page/:page', action: :index, on: :collection
  end

  resources :ailments do
    get '/page/:page', action: :index, on: :collection
  end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  root 'monsters#index'

  get '/monsters', to: 'monsters#index'

  # Map the default id of the monster, to the monster's name to map the view using the name, not the id

  get '/monsters/:name', to: 'monsters#show'

  get '/locations', to: 'locations#index'

  # Map the default id of the monster, to the monster's name to map the view using the name, not the id
  
  get '/locations/:name', to: 'locations#show'

  get '/ailments', to: 'ailments#index'

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

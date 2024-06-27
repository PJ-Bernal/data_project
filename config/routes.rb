Rails.application.routes.draw do
  root 'monsters#index'

  get '/monsters', to: 'monsters#index'

  # Map the default id of the monster, to the monster's name 
  resources :monsters, param: :name, only: [:index, :show]
  get '/monsters/:name', to: 'monsters#show'

  get '/locations', to: 'locations#index'

  get '/ailments', to: 'ailments#index'





  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

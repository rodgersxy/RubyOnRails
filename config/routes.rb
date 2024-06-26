Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # GET /about
  get "about", to: "about#index"


  # GET / sign_up
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  # GET / sign_in
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # logout
  delete "logout", to: "sessions#destroy"

  # GET /main
  root to: "main#index"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

 
end

Rails.application.routes.draw do
  resources :users
  resources :universities
  resources :coffeeshops

  root "home#show", page: "home"
  get "/home/:page" => "home#show"

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"

end

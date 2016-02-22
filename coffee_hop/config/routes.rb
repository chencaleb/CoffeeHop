Rails.application.routes.draw do
  root "home#show", page: "home"
  get "/home/:page" => "home#show"

  resources :users
end

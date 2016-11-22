Rails.application.routes.draw do

  resources :users
  resources :sessions
  resources :concerts

  root :to => "concerts#index"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  get "/concerts/new", to: "concerts#new"
  get "/concerts/:id", to: "concerts#show"
  get "/concerts/:id/edit", to: "concerts#edit"

  post "/concerts/:id", to: "concerts#order", as: "concert_id"

  put "/concerts/:id", to: "concerts#update"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

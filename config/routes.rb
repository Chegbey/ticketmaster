Rails.application.routes.draw do

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "index" => "concerts#index", :as => "index"
  get "new" => "concerts#new", :as => "new"
  get "show" => "concerts#show", :as => "show" 
  resources :users
  resources :sessions
  resources :concerts
  root :to => "ticketmaster#accueil"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

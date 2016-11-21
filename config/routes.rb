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
  root :to => "concerts#index"

   #CONCERTS

 post 'concerts/search' => 'concerts#search' , as:'search_concerts'
 get 'all_concerts/:id' => 'concerts#index', as: 'all_concerts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

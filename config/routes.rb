Rails.application.routes.draw do

  root 'static_pages#home'

  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  delete 'users/delete_users', :as => :delete_users
  delete 'users/ban_users', :as => :ban_users
  delete 'users/unban_users', :as => :unban_users

  post 'rooms/new'
  delete 'rooms/delete_rooms', :as => :delete_rooms
  resources :users 
  resources :rooms 
  resources :account_activations, only: [:edit]
end

Rails.application.routes.draw do
  root      'static_pages#home'
  post      '/static_pages/guest_sign_in', to: 'static_pages#guest_sign_in'
  get       '/login',  to: 'sessions#new'
  post      '/login',  to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
  get       '/signup', to: 'users#new'
  post      '/signup', to: 'users#create'
  post      '/add_item',        to: 'carts#add_item'
  post      '/change_quantity', to: 'carts#change_quantity'
  delete    '/delete_item',     to: 'carts#destroy'

  resources :products
  resources :users
  resources :orders
  resources :carts

  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end

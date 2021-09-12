Rails.application.routes.draw do
  root      'static_pages#home'
  get       '/login',  to: 'sessions#new'
  post      '/login',  to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
  get       '/search', to: 'products#search'
  get       '/signup', to: 'users#new'
  post      '/signup', to: 'users#create'

  resources :products
  resources :users
  resources :orders
end

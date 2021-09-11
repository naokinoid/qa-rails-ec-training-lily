Rails.application.routes.draw do
  root      'static_pages#home'
  get       '/login',  to: 'sessions#new'
  post      '/login',  to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
  get       '/search', to: 'products#search'
  resources :products
  resources :users
  resources :orders
end

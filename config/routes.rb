Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  resources :products
  resources :users
  resources :orders
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end

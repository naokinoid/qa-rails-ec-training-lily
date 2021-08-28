Rails.application.routes.draw do
  get 'static_pages/home'
  get '/login', to: 'sessions#new'
  resources :products
  resources :users
  resources :orders
end

Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  resources :home
  resources :admin
  resources :products

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#logout'
  post 'login', to: 'sessions#create'
  get 'admin', to: 'admin#index'
  get 'meals', to: 'products#meals'

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

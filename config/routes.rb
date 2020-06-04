Rails.application.routes.draw do

  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'

  get 'logout', to: 'sessions#logout'

  post 'login', to: 'sessions#create'

  resources :home

  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

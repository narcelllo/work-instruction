Rails.application.routes.draw do
  #get 'sessions/new'
  #resources :sessions
  resources :users 
  resources :instructions

  get 'login',   to: 'sessions#new'
  post 'login',  to: 'sessions#create'
  delete 'exit',  to: 'sessions#destroy'

  root to: 'instructions#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

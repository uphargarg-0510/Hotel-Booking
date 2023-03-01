Rails.application.routes.draw do
  resources :bookrooms
  # resources :mydatabases
  # get 'home/index'
  get 'home/bookroom'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

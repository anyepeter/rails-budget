Rails.application.routes.draw do
  resources :category_expenditures
  resources :categories
  resources :expenditures
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

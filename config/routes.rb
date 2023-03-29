Rails.application.routes.draw do
  devise_for :users

  root to: 'home#splash'
  
  resources :categories do 
  resources :expenditures  
end
  resources :users
end

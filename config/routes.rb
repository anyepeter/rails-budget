Rails.application.routes.draw do
  devise_for :users

  root to: "categories#index"
  
  resources :categories do 
  resources :expenditures do 
    resources :category_expenditures
  end
  end 
  resources :users

end

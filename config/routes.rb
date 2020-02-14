Rails.application.routes.draw do
  
  devise_for :accounts

  get "/dashboard" => "accounts#index"
  
  root to: "public#homepage"

  resources :posts, only: [:new,:create,:show]
  
end

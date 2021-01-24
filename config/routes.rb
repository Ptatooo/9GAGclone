Rails.application.routes.draw do
  devise_for :accs
  devise_for :accounts

  resources :communities
  
  root to: "public#index"


end

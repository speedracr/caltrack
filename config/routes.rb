Rails.application.routes.draw do
  resources :minimeals

  devise_for :users
  resources :foods
  resources :users

  root "foods#index"


  get "homepage" => "foods#index"

end

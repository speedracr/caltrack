Rails.application.routes.draw do
  devise_for :users
  resources :foods

  root "foods#index"


  get "homepage" => "foods#index"

end

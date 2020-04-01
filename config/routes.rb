Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  resources :players, only: [:show]
  resources :clubs do
    collection { post :import }
  end
  resources :users, only: [:show]
  resources :manuals, only: [:new, :create]
end
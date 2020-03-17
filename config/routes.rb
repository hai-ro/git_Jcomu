Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  resources :players, only: [:show]
  resources :clubs do
    collection { post :import }
  end
end
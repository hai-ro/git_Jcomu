Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  resources :players do
    resources :manuals do
      resources :likes, only: [:create, :destroy]
    end
  end
  resources :clubs do
    collection { post :import }
  end
  resources :users
  resources :top, only: [:show]
end
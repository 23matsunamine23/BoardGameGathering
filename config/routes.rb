Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :users
  resources :tweets do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
    member do
      get 'mine'
    end
  end
end

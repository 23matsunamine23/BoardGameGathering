Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :users
    resources :tweets do
      resources :comments, only: [:create]
      member do
        get 'mine'
      end
    end
end

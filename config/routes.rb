Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  root to: 'tops#index'
  resources :users do
    resource :relationships, only: [:create, :destroy]
    member do
      get :followings
      get :followers
    end
  end
  resources :tweets do
    resources :comments, only: [:create]
    resource :likes, only: [:create, :destroy]
    member do
      get 'mine'
    end
    collection do
      get 'favo'
    end
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :tops
  resources :users
    resources :tweets
end

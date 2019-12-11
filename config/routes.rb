Rails.application.routes.draw do
  root to: 'tops#index'
  devise_for :users
  get 'tops/index'
end

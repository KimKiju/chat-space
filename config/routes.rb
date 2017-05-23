Rails.application.routes.draw do
  resources :users, only:[ :update ]
  resources :messages
  devise_for :users
  root 'messages#index'
end

Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[ :update ]
  resources :groups, except: [ :destroy ]
  resources :messages
  root 'messages#index'
end

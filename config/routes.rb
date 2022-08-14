Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root 'posts#index'
  resources :posts do
   resources :comments, only: [:create]
   resources :goods, only: [:create, :destroy]
   end
  resources :comments do
   resources :likes, only: [:create, :destroy] 
  end
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

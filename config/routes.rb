Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  
  #root to: 'orders#index'
  #resources :orders, only:[:create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:edit, :update,:show]
  resources :items, only:[:new,:index,:show,:edit,:create,:update,:destroy]
  resources :items do
    resources :purchases, only:[:index,:create]
  end  
end

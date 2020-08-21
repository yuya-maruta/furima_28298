Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  #post 'posts', to: 'devise/registrations#create'
  #post 'posts', to: 'devise/sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:edit, :update]
  resources :items, only:[:new,:index,:show,:edit,:create]

end

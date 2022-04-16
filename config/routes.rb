Rails.application.routes.draw do
  devise_for :users
  resources :items do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'items#index'
end

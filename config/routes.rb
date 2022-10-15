Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'lists#index'
  resources :lists do
    resources :reviews, only: :create
  end
  resources :reviews, only: :destroy
end

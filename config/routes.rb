Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  root 'lists#index'
  resources :lists, only: [ :create, :new, :show] do
    member do
      resources :bookmarks, only: [:new, :create]
    end
  end
  resources :bookmarks, only: [:destroy]
end

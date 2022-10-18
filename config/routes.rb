Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end

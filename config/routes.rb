Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: :create
      resources :likes, only: [:index, :create, :destroy]
        collection do
          get 'search'
        end
  end
  resources :users, only: [:show, :edit, :update]
end

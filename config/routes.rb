Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :users
      resources :carts
      resources :orderables
      resources :products

      root to: "users#index"
    end
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products

  root "products#index"
end

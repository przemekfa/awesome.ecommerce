Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :users
      resources :carts
      resources :orderables
      resources :products

      root to: "users#index"
  end
  resources :products
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'

  root "products#index"
end

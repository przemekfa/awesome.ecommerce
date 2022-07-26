Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :groups
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  root "products#index"
end

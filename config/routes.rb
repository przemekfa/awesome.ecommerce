Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products
  devise_for :users
  get 'static_pages/landing_page'
  get 'static_pages/dashboard'
  root "static_pages#landing_page"
end

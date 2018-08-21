Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  resources :object_names
  resources :orders, only: [:index, :show, :create, :destroy]
  post 'simple_pages/thank_you'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  # When your application receives a request without a path it will invoke the landing_page action in the simple_pages controller.
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

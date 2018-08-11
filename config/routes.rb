Rails.application.routes.draw do
  resources :products
  resources :object_names
  resources :orders, only: [:index, :show, :create, :destroy]
  post 'simple_pages/thank_you'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

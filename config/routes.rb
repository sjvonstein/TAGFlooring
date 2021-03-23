Rails.application.routes.draw do
  resources :floorplanlayouts
  resources :categories
  resources :layouts
  resources :installations
  resources :units
  resources :products
  resources :floorplans
  resources :installers
  resources :communities
  resources :product_types
  resources :uoms
  resources :manufacturers
  resources :room_names
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

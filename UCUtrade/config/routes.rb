Rails.application.routes.draw do

  resources :items do
  	resources :comments
  end

  resources :comments do 
  	resources :comments
  end

  root to: 'items#index'
  devise_for :users
  get '/items', to: 'items#index'
  # resources :item

  get 'items/new', to: 'items#new'
  post 'items', to: "items#create"

  get 'items/:id/edit', to: 'items#edit'
  patch 'items/:id', to: 'items#update'
end

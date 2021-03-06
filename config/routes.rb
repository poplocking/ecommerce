# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :customer_informations
  get '/static/:permalink', to: 'page#permalink', as: 'permalink'
  post 'product/add_to_cart/:id', to: 'product#add_to_cart', as: 'add_to_cart'
  delete 'product/remove_From_cart/:id', to: 'product#remove_from_cart', as: 'remove_from_cart'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :product, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end

  resources :categorys, only: %i[index show] do
    collection do
      get 'category_results'
    end
  end

  resources :page, only: %i[index show]

  root to: 'product#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

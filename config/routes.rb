# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :product, only: :show

  root to: 'product#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

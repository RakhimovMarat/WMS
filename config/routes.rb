# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  root to: 'items#index'

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end

  get 'home/index'

  resources :items do
    get :transactions, on: :member
  end

  resources :addresses
  resources :stocks
  resources :orders
  resources :warehouses

  namespace :api do
    namespace :v1 do
      resources :profile, only: [:index]
      resources :items
      resources :addresses,   only: [:index]
      resources :stocks,      only: [:index]
      resources :orders,      only: [:index]
    end
  end
end

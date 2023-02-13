# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'items#index'

  get 'home/index'

  resources :items do
    get :transactions, on: :member
  end

  resources :addresses

  resources :stocks
end

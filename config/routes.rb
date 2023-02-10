# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  get 'home/index'

  resources :items

  resources :addresses

  resources :stocks
end

# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  root to: 'items#index'

  authenticate :user do
    mount Sidekiq::Web => "/sidekiq"
  end  

  get 'home/index'

  resources :items do
    get :transactions, on: :member
  end

  resources :addresses

  resources :stocks

end

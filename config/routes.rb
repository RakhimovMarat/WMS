Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'

  resources :items

  resources :addresses

  resources :stocks
  
end

require 'sidekiq/web'

Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  resources :user_accounts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

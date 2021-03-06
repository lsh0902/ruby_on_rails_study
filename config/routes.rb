Rails.application.routes.draw do
  root 'home#index'

  get 'packs/index'
  get 'packs/show'

  get "packs/:id" => "packs#show"


  resources :pack, only: [:index, :show]
  resources :posts
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

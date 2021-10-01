Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  devise_for :users

  root 'top#home'
  #root 'books#index'

  resources :tops, only: [:home]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

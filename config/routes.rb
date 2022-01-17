Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/mail/letter/web/open/engine"
  end

  namespace :admin do
    resources :users
    resources :blogs
    resources :books

    root to: "users#index"
  end

  mount ActionCable.server => '/cable'
  
  devise_for :users
  root 'top#home'
  resources :tops, only: [:home]
  resources :books
  get 'notification/list'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

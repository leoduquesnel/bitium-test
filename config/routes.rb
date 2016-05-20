Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :apps, only: [:index]
  resources :apps_users, only: [:create]

  # Active Admin routes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end

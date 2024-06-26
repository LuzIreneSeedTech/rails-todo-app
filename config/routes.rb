Rails.application.routes.draw do
  resources :categories
  resources :projects

  namespace :user do
    resources :tasks
    post 'save_date' => 'tasks#saveDate'
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  authenticated :user do
    root to: 'user#index', as: :authenticated_user_root
  end

  get 'user' => 'user#index'

  # Defines the root path route ("/")
  root 'home#index'
end

Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  resources :sessions
  resources :companies
  resources :posts
  resources :users

  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: [:show]
  root 'static_pages#index'
  resources :users, only: [:new, :create, :show, :index]
  resources :clients, only: [:new, :create, :show, :index]
  resources :sections, only: [:new, :create, :show]
  resources :infos, only: [:new, :create, :show]

  namespace :module do
    resource :doc, only: [:show]
    resource :usermod, only: [:show]
    resource :clientmod, only: [:show]
  end

end

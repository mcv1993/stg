Rails.application.routes.draw do
  devise_for :users
  devise_for :sas
  devise_for :admins
  devise_for :techs

  resource :dashboard, only: [:show]
  root 'static_pages#index'
  resources :users, only: [:new, :create, :show, :index]
  resources :clients, only: [:new, :create, :show, :index]
  resources :sections, only: [:new, :create, :show]
  resources :infos, only: [:new, :create, :show]
end

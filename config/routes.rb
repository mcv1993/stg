Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: [:show]
  root 'static_pages#index'
  resources :users, only: [:new, :create, :show, :index]
  resources :clients, only: [:show, :index] do
    resources :sections, only: [:show, :index, :new, :create] do
      resources :infos, only: [:show, :index]
    end
  end

  namespace :module do
    resource :doc, only: [:show] do
      resources :clients, only: [:show] do
        resources :sections do
          resources :infos, only: [:index, :show, :new, :create]
        end
      end
    end
    resource :usermod, only: [:show]
    resource :clientmod, only: [:show]
  end

end

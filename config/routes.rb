Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: [:show]
  root 'static_pages#index'


  namespace :infosheets do
    resources :static_pages, only: [:index]
    resources :clients, only: [:index, :show] do
      resources :sections, only: [:index, :show] do
        resources :infos, only: [:index, :show]
      end
    end
  end

  namespace :infosheetmod do
    resources :static_pages, only: [:index]
    resources :clients, only: [:index, :new, :create, :show] do
      resources :sections, only: [:new, :create, :show] do
        resources :infos
      end
    end
  end

  namespace :clientmod do
    resources :static_pages, only: [:index]
    resources :clients
  end

  namespace :usermod do
    resources :static_pages, only: [:index]
    resources :users
  end
 
end
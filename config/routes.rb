Rails.application.routes.draw do
  # resources :bookmarks
  # devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'xmls#index'

  devise_for :users

  resources :users do
    resources :xmls
  end

  resources :xmls do
    collection do
      get :autocomplete
    end
  end

  resources :xmls do
    resources :bookmarks
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

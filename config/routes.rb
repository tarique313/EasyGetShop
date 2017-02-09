Rails.application.routes.draw do

  scope "(:locale)", locale: /en|bn/ do
    root 'home#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: "registrations"}, skip: :omniauth_callbacks

  scope "(:locale)", locale: /en|bn/ do
    resources :users do
      member do
        get :orders
      end
    end
    resources :orders do
      resources :comments
    end
  #get 'accounts/index'

  resources "contacts", only: [:new, :create]
  get 'contacts/new'
  get 'contacts/create'
  get 'faq/index'
  get 'user_accounts/index', as: "accounts"



 end
  match '/contacts', to: 'contacts#new', via: 'get'
  end
  end

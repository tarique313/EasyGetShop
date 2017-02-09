Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: "registrations", omniauth_callbacks: "users/omniauth_callbacks"}
  scope "(:locale)", locale: /en|bn/ do

  root 'home#index'
  #get 'accounts/index'

  resources "contacts", only: [:new, :create]
  get 'contacts/new'
  get 'contacts/create'
  get 'faq/index'
  get 'user_accounts/index', as: "accounts"

  resources :orders do
    resources :comments
  end
 end
  resources :users do
    member do
      get :orders
    end
  
end
  match '/contacts', to: 'contacts#new', via: 'get'
end

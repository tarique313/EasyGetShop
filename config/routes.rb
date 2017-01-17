Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: "registrations"}
  get 'contacts/new'

  get 'contacts/create'

  root 'home#index'

  resources :orders do
    resources :comments
  end
  resources :users do
  member do
    get :orders
  end
end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]
end

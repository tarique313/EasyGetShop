Rails.application.routes.draw do
  
  scope "(:locale)", locale: /en|bn/ do 

  

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: "registrations"}

  root 'home#index'
  resources "contacts", only: [:new, :create]
  get 'contacts/new'
  get 'contacts/create'
  get 'faq/index'

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

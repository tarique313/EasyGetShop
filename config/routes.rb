Rails.application.routes.draw do
scope "(:locale)", locale: /en|bn/ do 

  #get '/:locale'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: "registrations"}
 # get '/:locale'

  root 'home#index'
  resources "contacts", only: [:new, :create]

  get 'contacts/new'
  get 'contacts/create'
  
  resources :orders do
    resources :comments
  end
end
  resources :users do
    member do
      get :orders
    end
  
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/contacts', to: 'contacts#new', via: 'get'
  #match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), via: 'get'
  #match '', to: redirect("/#{I18n.default_locale}"), via: 'get'
  
end

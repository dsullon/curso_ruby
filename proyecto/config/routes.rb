Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public#index'
  get 'contact', to: 'public#contact', as: 'contact'
  get 'dashboard', to: 'users#dashboard', as: 'dashboard'
  resources :documents, controller: 'documents', only:[:index, :new, :create, :show]
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public#index'
  get 'contact', to: 'public#contact', as: 'contact'
  get 'dashboard', to: 'users#dashboard', as: 'dashboard'
  resources :documents, controller: 'documents', only:[:index, :new, :create, :show]
  get 'documents/:id/traking', to: 'document_logs#new', as: 'new_document_traking'
  post 'documents/traking', to: 'document_logs#create', as: 'document_traking'
  put 'documents/approval', to: 'documents#approval', as: 'document_approval'
end

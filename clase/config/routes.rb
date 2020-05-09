Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "public#index"
  get "products", to: "products#index"
  post "products", to: "products#create"
  get "product/:id", to: "products#show", as: "show_product"
  get "products/new", to: "products#new"
  delete "products/:id", to: "products#destroy", as: "delete_product"
end

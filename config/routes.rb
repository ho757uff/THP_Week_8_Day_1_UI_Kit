Rails.application.routes.draw do
  get "molecules/index"
  # Devise routes with custom path names
  devise_for :users, path: "", path_names: {sign_in: "login", sign_out: "logout"}

  # Root route
  root "home#index"

  # Static pages
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"

  # Events routes using resources
  resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # Attendances routes (you might want to use resources here as well)
  get "attendances/create"
  get "attendances/destroy"

  # Health check route
  get "up" => "rails/health#show", :as => :rails_health_check

  # config/routes.rb
  resources :molecules, only: [:index]
end

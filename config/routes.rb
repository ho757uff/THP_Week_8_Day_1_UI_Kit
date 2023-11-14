Rails.application.routes.draw do
  # Devise routes with custom path names
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout" }

  # Root route
  root "home#index"

  # Static pages
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"
  get "molecules", to: "static_pages#molecules"

  # Molecules routes
  resources :molecules, only: [:index, :show] # Ajout de la route show

  # Events routes using resources
  resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # Attendances routes (consider using resources here as well)
  get "attendances/create"
  get "attendances/destroy"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end

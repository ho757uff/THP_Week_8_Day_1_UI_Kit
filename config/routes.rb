Rails.application.routes.draw do
  get "home/index"
  # Utilise HomeController#index comme page d'accueil
  get "attendances/create"
  get "attendances/destroy"
  get "events/index"
  get "events/show"
  get "events/new", to: "events#new", as: :new_event # Ajoutez cette ligne
  get "events/edit"
  get "events/create"
  get "events/update"
  get "events/destroy"
  get "events" => "events#index", as: :events

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/") to the home controller's index action
  root "home#index"
end

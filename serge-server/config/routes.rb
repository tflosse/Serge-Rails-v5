Rails.application.routes.draw do
  resources :groups
  resources :reservations
  resources :trips do
    resources :reservations
  get '/trips/:id/reservations', to: "trips#trip_reservations", as: "trip_reservations"
  resources :sessions, only: [:create, :show]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end

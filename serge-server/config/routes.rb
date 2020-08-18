Rails.application.routes.draw do
  
  # trips and reservations routes
  resources :trips, only: [:index, :create, :update, :destroy]
  resources :trips, only: [:show] do
    resources :reservations, only: [:index, :create, :destroy]
  end
  resources :reservations, only: [:show, :update]
  resources :reservations, only: [:show] do
    resources :groups, only: [:create]
  end
  # user and auth routes
  resources :sessions, only: [:create, :show]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end

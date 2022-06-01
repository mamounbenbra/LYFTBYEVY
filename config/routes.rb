Rails.application.routes.draw do
  get 'time_slots/new'
  get 'time_slots/create'
  resources :jours, only: [:new, :create]
  devise_for :users
  resources :users do
    resources :bookings, only: [:new, :create]
  end
  root to: 'pages#home'
  resources :questions
  resources :contacts, only: [:new, :create]
  get '/reservation', to: 'pages#reservation', as: 'reservation'
  get '/contacts', to: 'contacts#new', as:'contact'
  get '/create1', to: 'contacts#create1', as:'create1'
  get '/renata', to: 'pages#renata', as: 'renata'
  get '/lyft', to: 'pages#lyft', as: 'lyft'
  get '/rituel', to: 'pages#rituel', as: 'rituel'
  get :bookings, to: 'bookings#index'
end

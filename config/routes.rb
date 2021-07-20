Rails.application.routes.draw do
  resources :users do
  resources :bookings, only: [:new, :create]
  end
  root to: 'pages#home'
  devise_for :users
  resources :contacts, only: [:new, :create]
  get '/contacts', to: 'contacts#new', as:'contact'
  get '/create1', to: 'contacts#create1', as:'create1'
  get '/renata', to: 'pages#renata', as: 'renata'
  get '/lyft', to: 'pages#lyft', as: 'lyft'
  get :bookings, to: 'bookings#index'
end

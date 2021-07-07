Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
  resources :bookings, only: [:new, :create]
  end

  get '/renata', to: 'pages#renata', as: 'renata'
  get '/lyft', to: 'pages#lyft', as: 'lyft'
  get :bookings, to: 'bookings#index'
end

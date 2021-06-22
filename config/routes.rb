Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
  resources :bookings, only: [:new, :create]
  end

  get :bookings, to: 'bookings#index'
end

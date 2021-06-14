Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
  resources :bookings, only: [:new, :create]
  end
end

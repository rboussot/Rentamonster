Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :monsters, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
=======
  resources :monsters, only: [:index]
>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end




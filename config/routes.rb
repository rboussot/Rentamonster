Rails.application.routes.draw do
  get 'monsters/new'

  get 'monsters/create'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/index'

  get 'monsters/show'

  devise_for :users
  root to: 'pages#home'
  resources :monsters, only: [:show, :new]
  resources :bookings, only: [:index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

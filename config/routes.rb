Rails.application.routes.draw do
  resources :categories
  # get 'pages/home'

  root "pages#home"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :events, :registration, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photo

  resources :events do
  resources :registrations, only: [:create]
end
end

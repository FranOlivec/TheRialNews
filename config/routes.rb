Rails.application.routes.draw do
  resources :comments
  resources :publications
  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registration: 'users/registrations'
  }
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "publications#index"
  
end

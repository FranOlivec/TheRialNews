Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registration: 'users/registrations'
  }

  resources :publications do
    resources :comments, only: [:create, :new, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "publications#index"
  
end

Rails.application.routes.draw do
 
  resources :groups, only: [:index]
  resources :categories, only: [:index]
  resources :profiles, only: [:show, :update]
  
  resources :users, only: [:show] do
   resources :tasks, only: [:index, :create]
  end
  resources :users, only: [:destroy]
  resources :tasks, only: [:show, :destroy, :update]
  post "/signup", to: "users#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

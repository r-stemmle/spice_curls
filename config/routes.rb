Rails.application.routes.draw do
  resources :users do
    resources :spices, only: [:index, :new, :create]
  end
  resources :spices, only: [:show, :edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "spices#index"
end

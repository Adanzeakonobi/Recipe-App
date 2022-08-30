Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'user#index'
  root "public_recipes#index"
  resources :recipes, except: [ :update ]
  resources :foods, except: [ :show, :update]

 

  get "general_shopping_list", to: "general_shopping_list#index"
  get "public_recipes", to: "public_recipes#index"
end

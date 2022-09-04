Rails.application.routes.draw do
  resources :recipe_foods
   devise_for :users, controllers: {
        registrations: 'users/registrations'
      } 
      
  root "home#index"
  resources :recipes, except: [ :update ]
  resources :foods, except: [ :show, :update]
  resources :public_recipes, only: [ :index ]
  
  get "general_shopping_list", to: "general_shopping_list#index"
end

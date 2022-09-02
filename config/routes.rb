Rails.application.routes.draw do
   devise_for :users, controllers: {
        registrations: 'users/registrations'
      } 
      
  root "home#index"
  resources :recipes, except: [ :update ]
  resources :foods, except: [ :show, :update]

 

  get "general_shopping_list", to: "general_shopping_list#index"
  get "public_recipes", to: "public_recipes#index"
end

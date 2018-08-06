Rails.application.routes.draw do  
  resources :sales do
  	resources :portions	
  end
  get 'home/index'

  root 'home#index'
  resources :menus

  resources :foods do
  	resources :ingredients
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :customers
  resources :orders
  resources :menus
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

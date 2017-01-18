Rails.application.routes.draw do
  resources :reports
  resources :admins
  resources :customers
  resources :orders
  resources :menus
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

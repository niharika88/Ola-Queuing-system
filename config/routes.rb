Rails.application.routes.draw do
	patch 'select_ride', :to => 'drivers#select_ride'

  resources :drivers
  resources :customers
  resources :rides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

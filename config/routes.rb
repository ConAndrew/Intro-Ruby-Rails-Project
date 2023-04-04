Rails.application.routes.draw do

  resources :reviews
  resources :foods
  resources :restaurants
  get '/search', to: 'restaurants#search'
  resources :users

  get 'dashboards/index'
  get 'dashboards/about'
  root to: 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

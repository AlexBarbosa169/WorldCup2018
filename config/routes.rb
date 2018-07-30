Rails.application.routes.draw do
  resources :players
  resources :teams
  resources :playoffs
  resources :groups
  resources :tournaments
  get 'home/index'

root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

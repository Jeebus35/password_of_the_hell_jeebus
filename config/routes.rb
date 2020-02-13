Rails.application.routes.draw do
  resources :sessions
  resources :cities, only: [:show]
  resources :users
  resources :gossips
  get '/contact', to: 'contact#show'
  get '/team', to: 'team#show'
end

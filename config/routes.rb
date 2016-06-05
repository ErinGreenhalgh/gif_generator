Rails.application.routes.draw do
  root to: "gifs#index"

  resources :users, only: [:new, :index, :create, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

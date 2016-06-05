Rails.application.routes.draw do

  resources :users, only: [:new, :index, :create, :show]

  namespace :admin do
    resources :categories, only: [:new, :create]
  end

  resources :categories, only: [:show, :index]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

Rails.application.routes.draw do
  root to: "gifs#index"

  resources :users, only: [:new, :index, :create, :show]
end

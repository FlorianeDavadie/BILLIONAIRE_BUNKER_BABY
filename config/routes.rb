Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bunkers
  # get "/bunkers/:id", to: "bunkers#show_bunkers"
end

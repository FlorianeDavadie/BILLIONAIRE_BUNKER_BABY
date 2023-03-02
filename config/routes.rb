Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bunkers do
    resources :bookings, only: %i[new show create edit update destroy]
  end
  # get "/bunkers/:id", to: "bunkers#show_bunkers"
end

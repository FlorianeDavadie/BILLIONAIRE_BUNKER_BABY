Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :bunkers do
    resources :bookings, only: %i[new create edit update destroy]
  end

  resources :bookings, only: :show
  # get "/bunkers/:id", to: "bunkers#show_bunkers"
  get "/profil", to: "pages#profil"
end

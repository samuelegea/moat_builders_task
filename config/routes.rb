Rails.application.routes.draw do
  resources :albums
  devise_for :users
end

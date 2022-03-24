Rails.application.routes.draw do
  root to: 'albums#index'
  resources :albums
  devise_for :users
end

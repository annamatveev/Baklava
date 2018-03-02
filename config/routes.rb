Rails.application.routes.draw do
  get 'guesses/index'

  resources :users
  resources :photos
  root 'static_pages#home'
end

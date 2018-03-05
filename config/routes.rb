Rails.application.routes.draw do
  resources :users do
    member do
      get  'photos' => 'users#photos'
      post 'photos' => 'users#add_photo'
    end
  end
  resources :photos
end

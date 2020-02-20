Rails.application.routes.draw do
  resources :reservas
  resources :users
  resources :funcions
  resources :peliculas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

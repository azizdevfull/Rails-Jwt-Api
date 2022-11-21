Rails.application.routes.draw do
  resources :narutos
  delete 'logout', to: 'users#destroy'
  resources :users, only: [:create]
  post "/login", to: "users#login"
end

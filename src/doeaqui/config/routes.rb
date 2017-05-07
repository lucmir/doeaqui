Rails.application.routes.draw do
  resources :charities
  resources :app, only: [:index]
end

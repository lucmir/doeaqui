Rails.application.routes.draw do
  resources :locations
  resources :charities
  post 'user_token' => 'user_token#create'
   resources :users
end

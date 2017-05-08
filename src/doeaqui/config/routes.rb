Rails.application.routes.draw do
  resources :charities

  get '/', to: 'app#index'
end

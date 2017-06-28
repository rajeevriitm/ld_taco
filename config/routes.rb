Rails.application.routes.draw do
  namespace :v1 ,defaults: {format: 'json'} do
    resources :tacos,only: [:index,:show,:create,:destroy]
  end
end

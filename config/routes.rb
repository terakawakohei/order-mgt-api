Rails.application.routes.draw do
  resources :tickets
  resources :plans
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end

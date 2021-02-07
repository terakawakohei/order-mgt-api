Rails.application.routes.draw do
  resources :tickets do
    member do
      patch :ticket_restore
     end
  end
  resources :plans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end

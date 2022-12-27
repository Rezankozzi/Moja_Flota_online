Rails.application.routes.draw do
  resources :reminders
  resources :repaire_parts
  resources :services
  resources :users
  resources :venihles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#start'
  resources :venihles do
    resources :services
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  # root '/app/public/Hermespol'
  resources :venihles do
    resources :services
  end
end

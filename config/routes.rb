# frozen_string_literal: true

Rails.application.routes.draw do
  resources :merchants
  root 'homes#index'

  devise_for :users
  
  root "homes#index"
end

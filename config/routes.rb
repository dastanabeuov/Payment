# frozen_string_literal: true

Rails.application.routes.draw do
  root 'homes#index'

  resources :merchants, only: [:index, :show]

  devise_for :users
  devise_for :merchants
  devise_for :admins
end

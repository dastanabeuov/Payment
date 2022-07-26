# frozen_string_literal: true

Rails.application.routes.draw do
  root "homes#index"

  devise_for :users
end

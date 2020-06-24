# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sectors, only: %i[index show]
  resources :stadiums, only: %i[index show]
  resources :teams, only: %i[index show]
  resources :matches, only: %i[index show]
end

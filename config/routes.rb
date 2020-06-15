# frozen_string_literal: true

Rails.application.routes.draw do
  resources :stadiums, only: %i[index show]
  resources :teams, only: %i[index show]
end

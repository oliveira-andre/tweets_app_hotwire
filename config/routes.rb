# frozen_string_literal: true

Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :users, only: %i[new create]
  resources :sessions, only: %i[new create destroy]
  resources :tweets

  root to: 'tweets#index'
end

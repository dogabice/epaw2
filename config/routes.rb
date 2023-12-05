# frozen_string_literal: true

Rails.application.routes.draw do

  resources :pets

  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'

end

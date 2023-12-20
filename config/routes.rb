# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments
  resources :donations
  devise_for :vets, path: 'vets', controllers: { registrations: 'vets/registrations',
                                                sessions: 'vets/sessions',
                                                confirmations: 'vets/confirmations',
                                                mailer: 'vets/mailer',
                                                passwords: 'vets/passwords',
                                                shared: 'vets/shared',
                                                unlocks: 'vets/unlocks' }

  resources :pets do
  resources :health_records
end

  devise_for :users, path: 'users', controllers: { registrations: 'users/registrations',
                                                  sessions: 'users/sessions',
                                                  confirmations: 'users/confirmations',
                                                  mailer: 'users/mailer',
                                                  passwords: 'users/passwords',
                                                  shared: 'users/shared',
                                                  unlocks: 'users/unlocks' }

  authenticated :user do
    root 'home#index', as: :authenticated_user_root
  end
  authenticated :vet do
    root 'home#index', as: :authenticated_vet_root
  end

  get 'home/template'
  get 'home/account_type_login'
  get 'home/account_type_register'
  root 'home#index'



  #devise_scope :user do  (??)

end

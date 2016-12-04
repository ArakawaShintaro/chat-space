Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :messages, only: :index
  resources :groups, only: [:new, :create]
end

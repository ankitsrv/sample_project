Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  resources :secret_codes
  post 'random_code', to: 'secret_codes#random_code'
  #resources :users
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  }
  
  
end


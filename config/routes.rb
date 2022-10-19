Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: 'about#index'

  get "password", to: 'passwords#edit', as: :edit_password
  patch "password", to: 'passwords#update'

  get "sign_up", to: 'registrations#new'
  post "sign_up", to: 'registrations#create'

  get "sign_in", to: 'sessions#new'
  post "sign_in", to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  resources :products


  root "main#index"

  # match "/404", to: "errors#not_found", via: :all
  # match "/500", to: "errors#internal_server_error", via: :all
end

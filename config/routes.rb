Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'


  match "/auth/:provider/callback" => 'sessions#create', as: "login_callback", via: [:get, :post]
  get 'logout', to: "sessions#destroy"

  resource :session, only: [:new, :create]

  resources :voter_guides
  resources :endorsements, only: :update
end

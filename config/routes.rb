Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :bearers, only: [:create, :show]
      resources :market_prices, only: [ :show, :create ]
      resources :stocks, except: [ :new, :edit ]
    end
  end
end


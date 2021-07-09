Rails.application.routes.draw do
  devise_for :users

  require "sidekiq/web"
  authenticate :user -> (user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :bearers, only: [:create, :show]
      resources :market_prices, only: [ :show, :create ]
      resources :stocks, only: [ :show, :create, :index, :update, :destroy ]
    end
  end
  
end

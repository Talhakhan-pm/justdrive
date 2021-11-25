require 'sidekiq/web'

Rails.application.routes.draw do
    namespace :host do
      resources :vehicles
    end
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do
    post '/host', :to => 'host/vehicles#create'
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

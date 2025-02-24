Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  root to: 'bags#index'
  get 'dashboard', to: 'dashboard#profile'
  resources :bags, except: [:edit, :update, :destroy] do
    resources :bookings, only: [:new, :create, :update]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end

# controller bags, bookings, dashboard

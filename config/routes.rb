Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations',
                                        sessions: 'users/sessions' }

  namespace :api do
    namespace :v1 do
      resources :events
    end
  end

  resources :events do
    member do
      get :join_event
      get :cancel_attendance
    end
  end

  get 'home/index'
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
end

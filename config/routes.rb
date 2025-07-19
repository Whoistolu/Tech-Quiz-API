Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :quizzes do
        resources :questions do
          resources :options
        end
      end

      resources :submissions

      devise_for :users, controllers: {
        sessions: "api/v1/users/sessions",
        registrations: "api/v1/users/registrations",
        passwords: "api/v1/users/passwords",
        confirmations: "api/v1/users/confirmations",
        unlocks: "api/v1/users/unlocks",
        omniauth_callbacks: "api/v1/users/omniauth_callbacks"
      }
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end

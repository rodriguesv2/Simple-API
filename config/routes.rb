Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      get "greetings", to: "greetings#index"
      post "greetings", to: "greetings#create"
      get "greetings/fetch_user_data", to: "greetings#fetch_user_data"
    end
  end

  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
end

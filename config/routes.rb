Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "pages#index"

  namespace :api do
    namespace :v1 do
      resources :airlines, params: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  # This will re-route requests that are not for existing paths pre-defined in our API back to our index path.
  get "*path", to: "pages#index", via: :all
end

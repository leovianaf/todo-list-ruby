Rails.application.routes.draw do
  root "lists#index"

  resources :item_tags
  resources :tags
  resources :lists do
    resources :items, only: [:new, :create, :update, :destroy, :edit] do
      member do
        patch :toggle_done
      end
    end
  end

  resources :categories, except: [:index, :show]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
Rails.application.routes.draw do
  resources :items, only: %i(index create) do
    member do
      post :mark_done
    end
  end
  root to: "items#index"
end

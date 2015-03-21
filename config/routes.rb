Rails.application.routes.draw do
  resources :items, only: %i(index create)
  root to: "items#index"
end

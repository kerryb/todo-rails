Rails.application.routes.draw do
  resources :items, only: %i(index)
  root to: "items#index"
end

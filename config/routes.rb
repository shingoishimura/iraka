Rails.application.routes.draw do
  root to:'tickets#index'
  resources :tickets do
    resources :orders, only: [:index, :new ,:create,:show]
  end
end

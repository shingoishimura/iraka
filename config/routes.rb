Rails.application.routes.draw do
  root to: 'tickets#index'
  resources :tickets do
    resources :orders, only: %i[index new create show]
  end
end

Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :users, only: [:new, :create]
  resources :blogs do
  end
end

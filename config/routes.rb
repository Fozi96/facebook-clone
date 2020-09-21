Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'blogs#index'
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    collection do
      post :confirm
     patch :confirm
   end
  end
end

Rails.application.routes.draw do
  resources :contacts
  get 'sessions/new'
  root to: 'blogs#index'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :blogs do
    collection do
      post :confirm
     patch :confirm
   end
  end
end

Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs do
    collection do
      blog :confirm
      patch :confirm
    end
  end
end

Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs do
  end
end

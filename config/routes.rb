Rails.application.routes.draw do
  root to: 'home#index'
  resources :articles
  resources :posts    
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

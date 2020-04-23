Rails.application.routes.draw do

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end


  resources :feed_rsses
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :contacts
  root to: 'home#index'
  resources :articles
  resources :posts
  resources :profiles
  resources :feed_rss
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

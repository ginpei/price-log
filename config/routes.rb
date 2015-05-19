Rails.application.routes.draw do
  resources :items do
    resources :experiences
  end

  get '/auth/:provider/callback', to: 'sessions#callback'
  post '/auth/:provider/callback', to: 'sessions#callback'
  get '/logout', to: 'sessions#destroy', as: :logout
  resources :users
  root 'misc#home'
end

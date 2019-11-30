Rails.application.routes.draw do
  resources :codings
  resources :playfuls
  resources :arts
  resources :classics
  resources :examples
  resources :privacy
  resources :simplestocksapi
  devise_for :users
  root to: 'pages#home'

  get '/impressum', to: 'pages#impressum', as: 'impressum'

end

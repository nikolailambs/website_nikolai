Rails.application.routes.draw do
  resources :projects
  resources :privacy
  resources :simplestocksapi
  devise_for :users
  root to: 'pages#home'

  get '/impressum', to: 'pages#impressum', as: 'impressum'

end

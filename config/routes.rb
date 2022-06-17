Rails.application.routes.draw do
  root 'pages#dashboard'

  get 'account', to: 'pages#account'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :articles
end

Rails.application.routes.draw do
  root 'pages#dashboard'

  get '/account', to: 'pages#account'
  get '/tokens', to: 'tokens#index'
end

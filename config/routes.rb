Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  post '/login', to: 'authentication#login'
  get '/verify', to: 'authentication#verify'
end

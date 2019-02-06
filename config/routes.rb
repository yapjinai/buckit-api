Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :todos, except: [:update]
      resources :items
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end

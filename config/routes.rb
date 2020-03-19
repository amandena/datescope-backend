Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      get '/get_current_user', to: 'sessions#get_current_user'
      get '/users/:id/messenger', to: 'messages#messenger'
      get '/users/:id/matches', to: 'users#matches'
      delete '/logout', to: 'sessions#destroy'
      resources :users do
        resources :matches
        resources :messages
      end
    end
  end
end

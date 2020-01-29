Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
      get '/get_current_user', to: 'sessions#get_current_user'
      delete '/logout', to: 'sessions#destroy'
      resources :users do
        resources :matches
        resources :messages
      end
    end
  end
end

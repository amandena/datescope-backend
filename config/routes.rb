Rails.application.routes.draw do
  resources :users do
    resources :matches
    resources :messages
  end

end

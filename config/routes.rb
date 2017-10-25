Rails.application.routes.draw do
  resources :messages
  namespace :api do
    resources :messages
  end
end

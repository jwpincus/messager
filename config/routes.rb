Rails.application.routes.draw do
  resources :messages
  namespace :api do
    resources :messages
  end
  root to: 'messages#new'
  match '/*route', to: 'messages#new', via: [:all]
end

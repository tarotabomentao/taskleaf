Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  namespace :admin do
    resources :users
  end
  resources :tasks
  root to: 'tasks#index' 
end

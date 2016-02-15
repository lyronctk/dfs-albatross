Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'
  get '/golfers_index' => 'golfers#index'
  get '/contest_index' => 'contest#index'
  get '/golf_lineup_index' => 'golf_lineup#index'
  get '/auth/:provider/callback' => 'sessions#create'
  post '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end

RailsBootstrap::Application.routes.draw do
  get '/visitors' => 'visitors#new'
  resources :visitors, only: [:new, :create]
  root 'visitors#new'
end

RailsBootstrap::Application.routes.draw do
  get 'pages/about' => 'high_voltage/pages#show', id: 'about'

  root 'visitors#new'
end

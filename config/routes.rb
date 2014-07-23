Edge::Application.routes.draw do
  root to: 'pages#home'
  get '/:track_name' => 'tracks#show'
  get '/:track_name/events' => 'events#index'
end

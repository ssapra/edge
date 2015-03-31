Edge::Application.routes.draw do

  root to: 'pages#home'

  get '/auth' => 'auth#login'

  namespace :admin do
    resources :events
  end

  get '/:track_name' => 'tracks#show'
  get '/:track_name/events' => 'events#index'
end

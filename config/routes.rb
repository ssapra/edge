Edge::Application.routes.draw do

  root to: 'pages#home'

  get '/auth' => 'auth#login'
  get "/team" => 'pages#team'

  namespace :admin do
    resources :events
  end

  get '/:track_name' => 'tracks#show', as: :track
  get '/:track_name/edit' => 'tracks#edit'
  patch '/:track_name' => 'tracks#update'
  # get '/:track_name/events' => 'events#index'

end

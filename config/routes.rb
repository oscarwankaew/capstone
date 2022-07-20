Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/fighters" => "fighters#index"
  get "/fighters/:id" => "fighters#show"
  post "/fighters" => "fighters#create"
  patch "/fighters/:id" => "fighters#update"
  delete "/fighters/:id" => "fighters#destroy"

  get "/events" => "events#index"
  get "/events/:id" => "events#show"
  patch "/events/:id" => "events#update"
  post "/events" => "events#create"
  delete "/events/:id" => "events#destroy"

  get "/selected_events" => "selected_events#index"
  get "/selected_events/:id" => "selected_events#show"
  post "/selected_events" => "selected_events#create"
  delete "/selected_events/:id" => "selected_events#destroy"

  get "/live_streams" => "live_streams#index"
  get "/live_streams/:id" => "live_streams#show"
  post "/live_streams" => "live_streams#create"
  delete "/live_streams/:id" => "live_streams#destroy"

  get "/fight_nights" => "fight_nights#index"
  get "/fight_nights/:id" => "fight_nights#show"
  post "/fight_nights" => "fight_nights#create"
  delete "/fight_nights/:id" => "fight_nights#destroy"

  get "favorite_fighters" => "favorite_fighters#index"
  get "favorite_fighters/:id" => "favorite_fighters#show"
  post "favorite_fighters" => "favorite_fighters#create"
  delete "favorite_fighters/:id" => "favorite_fighters#destroy"
end

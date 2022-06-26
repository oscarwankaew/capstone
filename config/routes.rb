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
  post "/events" => "events#create"
  delete "/events/:id" => "events#destroy"
end

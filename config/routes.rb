Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/fighters" => "fighters#index"
  get "/fighters/:id" => "fighters#show"
  post "/fighters" => "fighters#create"
  patch "/fighters/:id" => "fighters#update"
  delete "/fighters/:id" => "fighters#destroy"
end

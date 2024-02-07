Rails.application.routes.draw do
  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items/" => "items#create"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"

  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images/" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  post "sessions" => "sessions#create"

  get "/users_loved_items" => "users_loved_items#index"
  get "/users_loved_items/:user_id" => "users_loved_items#show"
  post "/users_loved_items/" => "users_loved_items#create"
  delete "/users_loved_items/:user_id" => "users_loved_items#destroy"
end

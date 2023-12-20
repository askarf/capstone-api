Rails.application.routes.draw do
  get "/items" => "items#index"

  get "/users" => "users#index"
end

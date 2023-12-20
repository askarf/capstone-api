Rails.application.routes.draw do
  get "/items" => "items#index"

  get "/users" => "items#index"
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
  get "/users" => "users#index"
  patch "/users/:id" => "users#update"

  post "/clowns" => "clowns#create"
  get "/clowns" => "clowns#index"

  post "/bookings" => "bookings#create"
  get "/booking" => "bookings#index"
  delete "/bookings/:id" => "bookings#destroy"





end

Rails.application.routes.draw do
  get "/home", to: 'posts#home'
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end

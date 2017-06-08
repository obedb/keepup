Rails.application.routes.draw do
  get "/home", to: 'posts#home'
  get "/posts", to: 'posts#index'
  get "/posts/new", to: 'posts#new'
  get "/posts/:id", to: 'posts#show'
  post "/posts", to: 'posts#create'
  get "/posts/:id/edit", to: 'posts#edit'
  patch "/posts/:id", to: 'posts#update'
  delete "/posts/:id", to: 'posts#destroy'

  get "/comments/new", to: 'comments#new'
  post "/comments", to: 'comments#create'
  delete "/comments/:id", to: 'comments#destroy'


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end


 
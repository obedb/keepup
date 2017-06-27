Rails.application.routes.draw do

<<<<<<< HEAD
  get"/home", to: 'posts#home'
  get "/index", to: 'posts#index'

=======
  get "/index", to: 'posts#index'
>>>>>>> d210f5d10b73d89baa6acffba58709053e7179ee
  get "/contacts", to: 'posts#contacts'
  get "/posts", to: 'posts#index'
  get "/posts/new", to: 'posts#new'
  get "/posts/:id", to: 'posts#show'
  post "/posts", to: 'posts#create'
  get "/posts/:id/edit", to: 'posts#edit'
  patch "/posts/:id", to: 'posts#update'
  delete "/posts/:id", to: 'posts#destroy'

<<<<<<< HEAD

=======
>>>>>>> d210f5d10b73d89baa6acffba58709053e7179ee
  get "/comments/new", to: 'comments#new'
  post "/comments", to: 'comments#create'
  delete "/comments/:id", to: 'comments#destroy'


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  

  get "/signup" => "users#new" 
  post "/users" => "users#create"
  
end


 
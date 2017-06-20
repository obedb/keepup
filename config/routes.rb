Rails.application.routes.draw do

  get"/", to: 'posts#home'
  get "/home", to: 'posts#home'
  get "/contacts", to: 'posts#contacts'
  get "/posts", to: 'posts#index'
  get "/posts/new", to: 'posts#new'
  get "/posts/:id", to: 'posts#show'
  post "/posts", to: 'posts#create'
  get "/posts/:id/edit", to: 'posts#edit'
  patch "/posts/:id", to: 'posts#update'
  delete "/posts/:id", to: 'posts#destroy'


 devise_for :users

  authenticated :user do
    root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
  end

  get "/comments/new", to: 'comments#new'
  post "/comments", to: 'comments#create'
  delete "/comments/:id", to: 'comments#destroy'


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  

  get "/signup" => "users#new" 
  post "/users" => "users#create"
  
end


 
Rails.application.routes.draw do


 

  get"/", to: 'posts#home'
  get "/home", to: 'posts#home'


  get"/home", to: 'posts#home'
  get "/index", to: 'posts#index'


  get "/index", to: 'posts#index'

  get "/contacts", to: 'posts#contacts'

  get "/home", to: 'posts#home'
  get "/posts", to: 'posts#index'

  get "/chat", to: 'chats#index'

    resources :conversations, only: [:create] do 
    member do
      post :close
    end
    resources :messages, only: [:create]
  end 


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

  delete "/logout" => "sessions#destroy"


  get "/logout" => "sessions#destroy"
  delete "logout" => "sessions#destroy"


  get "/signup" => "users#new" 
  post "/users" => "users#create"
  
end
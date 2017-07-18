Rails.application.routes.draw do


  root 'posts#index'
  get "/home", to: 'posts#home'

  
  root "posts#index"





  get"/", to: 'posts#index'
  get "/index", to: 'posts#index'


  get "/index", to: 'posts#index'

  get "/contacts", to: 'posts#contacts'


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
  post "/posts/new", to: 'posts#create'
  get "/posts/:id/edit", to: 'posts#edit'
  patch "/posts/:id", to: 'posts#update'
  delete "/posts/:id", to: 'posts#destroy'

  resources :comments

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"

  delete "/logout" => "sessions#destroy"


  get "/logout" => "sessions#destroy"
  delete "logout" => "sessions#destroy"


  get "/signup" => "users#new" 
  post "/users" => "users#create"

  resources :categories, only:[:index]
  
end
Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'
  root 'posts#index'
  get "/home", to: 'posts#home'

  resources :posts do 
    resources :comments
  end

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

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"

  delete "/logout" => "sessions#destroy"


  get "/logout" => "sessions#destroy"
  delete "logout" => "sessions#destroy"


  get "/signup" => "users#new" 
  post "/users" => "users#create"
  
end
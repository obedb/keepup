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

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"

  delete "/logout" => "sessions#destroy"


  get "/logout" => "sessions#destroy"
  delete "logout" => "sessions#destroy"


  get "/signup" => "users#new" 
  post "/users" => "users#create"

  resources :categories, only:[:index]
  
end
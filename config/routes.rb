Rails.application.routes.draw do

  get "/chat", to: 'chats#index'

    resources :conversations, only: [:create] do 
    member do
      post :close
    end
    resources :messages, only: [:create]
  end 



  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  

end

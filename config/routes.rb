Myflix::Application.routes.draw do
  root to: 'pages#front'
  get 'home', to: "videos#index"
  get 'ui(/:action)', controller: 'ui'
  get 'register', to: 'users#new'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'sign_out', to: 'sessions#destroy'
  get 'my_queue', to: 'queue_items#index'

  resources :videos, only:  [:show] do
    collection do
      post 'search', to: 'videos#search'
    end
      resources :reviews, only: [:create]
      end
    
  resources :categories, only: [:show]
  resources :queue_items, only: [:create, :destroy]

  post 'update_queue', to: 'queue_items#update_queue'

  resources :users, only: [:create]
  resources :sessions, only: [:create]
  

end

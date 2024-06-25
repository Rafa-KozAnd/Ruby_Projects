Rails.application.routes.draw do
    resources :jobs
    resources :users, only: [:show, :edit, :update]
    resources :applications, only: [:create, :destroy]
    
    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    root 'jobs#index'
  end
  
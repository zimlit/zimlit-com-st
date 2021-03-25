Rails.application.routes.draw do
  get 'tutorials/new'
  get 'tutorials/create'
  resources :projects, only: [:new, :create]
  resources :tutorials, only: [:new, :create]
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'conlanging', to: "conlanging#index"
  get 'conworlding', to: "conworlding#index"
  get 'cubing', to: "cubing#index"
  get 'coding', to: "coding#index"
  get 'home', to: "home#index"
  delete 'logout', to: "sessions#destroy"
  get '/login_req', to: "sessions#login_req"
  root 'home#index'
  post 'projects/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

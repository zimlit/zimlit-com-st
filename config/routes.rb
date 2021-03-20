Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

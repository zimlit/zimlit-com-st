Rails.application.routes.draw do
  get 'conlanging', to: "conlanging#index"
  get 'conworlding', to: "conworlding#index"
  get 'cubing', to: "cubing#index"
  get 'coding', to: "coding#index"
  get 'home', to: "home#index"
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'users/:id' => "users#show"
  # resources :users
  resources :posts
  devise_for :users
  root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

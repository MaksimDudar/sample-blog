Rails.application.routes.draw do
  devise_for :users
  resources :users

  root to: "home#index"

  get 'home/index'

  get 'about' => 'pages#about'
  get 'information' => 'pages#information'
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do
    resources :comments, only: [:create]
  end

  resource :terms
  resource :abouts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

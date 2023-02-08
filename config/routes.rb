Rails.application.routes.draw do
  namespace :admin do
    get 'order/index'
  end
  get 'categories/index'
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get 'password_resets/new'
  get 'password_resets/edit'
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    root :to => 'static_pages#index'
    resources :categories
    resources :products
    resources :orders
  end
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :products, only: [:index]
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end

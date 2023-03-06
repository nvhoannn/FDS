Rails.application.routes.draw do
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admin do
    get 'order/index'
  end
  get 'categories/index'
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :admin do
    root :to => 'static_pages#index'
    resources :categories
    resources :products
    resources :orders
  end
end

Rails.application.routes.draw do

  # resources :microposts,          only: [:create, :destroy]




    post '/product/:id/micropost/new', to: 'micropost#create'

  get 'products/index'

  get 'products/show'

  get 'products/new'

  get 'products/edit'

  root 'static_pages#home'

  # static pages routes, not connected to models
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  # get '/products', to: 'products#index'
  get '/contact_us', to: 'static_pages#contact_us'
  get '/signup', to: 'users#new'
  post'/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :products
  resources :products do
    resources :microposts
  end

  resources :microposts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

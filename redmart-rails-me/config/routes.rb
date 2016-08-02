Rails.application.routes.draw do
  root 'static_pages#home'

  # static pages routes, not connected to models
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact_us', to: 'static_pages#contact_us'
  get '/signup', to: 'users#new'
  post'/signup', to: 'users#create'


  get 'users/index', to: 'users#index'
  get 'users/show', to: 'users#show'
  get 'users/edit', to: 'users#edit'

  get 'users', to: 'users#show'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

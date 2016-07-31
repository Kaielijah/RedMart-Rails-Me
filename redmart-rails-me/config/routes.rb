Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/help'

  get 'static_pages/contact_us'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'

end

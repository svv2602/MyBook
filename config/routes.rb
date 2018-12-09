Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  #get '/article', to: "articles#index"

  resources :divisions
  mount Ckeditor::Engine => '/ckeditor'
  # get '' to: "articles#index"

  resources :articles

end

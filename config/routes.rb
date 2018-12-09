Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  root 'static_pages#home'

  resources :divisions
  mount Ckeditor::Engine => '/ckeditor'
  # root to: "articles#index"

  resources :articles

end

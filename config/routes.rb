Rails.application.routes.draw do
  resources :divisions
  mount Ckeditor::Engine => '/ckeditor'
  root to: "articles#index"

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :users
  resources :newsletters
  resources :articles do
    resources :comments
  end
  
  root 'static_pages#index'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get  '/login',   to: 'users#login'
  get  '/blog',    to: 'articles#index'
  
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

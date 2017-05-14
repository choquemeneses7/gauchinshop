Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :usuarios
  resources :posts
  resources :products
  resources :usuario_sessions
  resources :user_sessions

  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout
  get 'search/create'

  root to:'tienda#inicio'
  get 'tienda/inicio'

  get 'tienda/celular'

  get 'tienda/computadora'

  get 'tienda/tablet'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

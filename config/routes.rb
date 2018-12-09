Rails.application.routes.draw do
  get 'sessions/new'
  root "static_pages#home"
  get     '/home',         to: 'static_pages#home'
  get     '/help',         to: 'static_pages#help'
  get     'sign_in/hello'
  get     '/signup',       to: 'users#new'
  post    '/signup',       to: 'users#create'
  # get     '/users',        to:  'users#index'
  # post    '/users',        to:  'users#index'
  # get     '/update',       to: 'users#edit'
  # post    '/update',       to: 'users#update'
  get     '/login',        to: 'sessions#new'
  post    '/login',        to: 'sessions#create'
  delete  '/logout',       to: 'sessions#destroy'
  # resource  :sessions
  resources :reports    # only: [:create, :update, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

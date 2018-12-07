Rails.application.routes.draw do
  resources :reports
  resources :users
  get 'sign_in/hello'
  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  devise_for :users
  root 'todos#index'
  resources :todos
  resources :users
end

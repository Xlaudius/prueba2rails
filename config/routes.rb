Rails.application.routes.draw do
  resources :todos, only: :index do
    resources :checkeds, only: :create
  end
  get 'todos/index'
  get 'todo/index'
  get 'checkeds/create'
  
  devise_for :users

  root to: 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

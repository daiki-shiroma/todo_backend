Rails.application.routes.draw do

  root to: redirect('/todos')

  get 'todos', to: 'todos#index'
  post "todos" => "todos#create"
  put "todos/:id" => "todos#update"
  delete '/todos/destroy_doneTask', to: 'todos#destroy_doneTask'
  delete '/todos/destroy_all', to: 'todos#destroy_all'
  delete "todos/:id" => "todos#destroy"
  
  resources :todos, only: %i[index create update destroy]
 
end
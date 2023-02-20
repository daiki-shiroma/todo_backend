Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
          registrations: 'api/v1/auth/registrations_'
      }

      namespace :auth do
        get 'registrations', to: 'registrations#index'
        resources :registrations, only: %i[index]
      end
    end
  end
  
  root to: redirect('/todos')

  get 'todos', to: 'todos#index'
  post "todos" => "todos#create"
  put "todos/:id" => "todos#update"
  delete '/todos/destroy_doneTask', to: 'todos#destroy_doneTask'
  delete '/todos/destroy_all', to: 'todos#destroy_all'
  delete "todos/:id" => "todos#destroy"
  
  resources :todos, only: %i[index create update destroy]
 
end
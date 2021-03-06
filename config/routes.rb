Rails.application.routes.draw do
  resources :students, only: :index

  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students/create', to: 'students#create', as: 'create_student'

  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show', as: 'student'

end

Rails.application.routes.draw do
  root 'students#index'
  get '/signup', to: 'students#new'
  post '/signup', to: 'students#create'
  post '/index', to: 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
# generates:
#   get "/students" -- index on your controller
#   get "/students/:id" -- show on your controller
#   get "/students/new" -- new method on your controller
#   post "/students" -- create on your controller
#   get "/students/:id/edit" -- edit method on your controller
#   put "/students/:id" -- update on your controller
#   patch "/students/:id" -- update on your controller
#   delete "/students/:id" -- destroy on your controller
end

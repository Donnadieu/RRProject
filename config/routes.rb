Rails.application.routes.draw do
  root 'students#index'
  get '/signup', to: 'students#new'
  post '/signup', to: 'students#create'
  get '/create', to: 'cclasses#new'
  post '/create', to: 'cclasses#create'
  post '/display', to: 'students#show'
  #get 'students/:id/edit', to: 'students#edit', as: :edit_studet
  #put 'students/:id', to: 'students#update'

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

resources :cclasses
# generates:
#   get "/cclasses" -- index on your controller
#   get "/cclasses/:id" -- show on your controller
#   get "/cclasses/new" -- new method on your controller
#   post "/cclasses" -- create on your controller
#   get "/cclasses/:id/edit" -- edit method on your controller
#   put "/cclasses/:id" -- update on your controller
#   patch "/cclasses/:id" -- update on your controller
#   delete "/cclasses/:id" -- destroy on your controller

resources :enrollments
# generates:
#   get "/enrollments" -- index on your controller
#   get "/enrollments/:id" -- show on your controller
#   get "/enrollments/new" -- new method on your controller
#   post "/enrollments" -- create on your controller
#   get "/enrollments/:id/edit" -- edit method on your controller
#   put "/enrollments/:id" -- update on your controller
#   patch "/enrollments/:id" -- update on your controller
#   delete "/enrollments/:id" -- destroy on your controller

end

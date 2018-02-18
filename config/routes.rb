Rails.application.routes.draw do
  get 'enrollments/index'
  get 'enrollments/show'
  get 'enrollments/new'
  get 'enrollments/update'
  get 'enrollments/create'
  get 'enrollments/edit'
  get 'enrollments/destroy'
  root 'students#index'
  get '/signup', to: 'students#new'
  post '/signup', to: 'students#create'
  post '/display', to: 'students#show'
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

resources :class_groups
# generates:
#   get "/class_groups" -- index on your controller
#   get "/class_groups/:id" -- show on your controller
#   get "/class_groups/new" -- new method on your controller
#   post "/class_groups" -- create on your controller
#   get "/class_groups/:id/edit" -- edit method on your controller
#   put "/class_groups/:id" -- update on your controller
#   patch "/class_groups/:id" -- update on your controller
#   delete "/class_groups/:id" -- destroy on your controller
end

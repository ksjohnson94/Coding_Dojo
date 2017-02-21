Rails.application.routes.draw do
get '/', to: 'users#index'
post '/register', to: 'users#register'
post '/login', to: 'users#login'
get '/back', to: 'events#index'
get '/events', to: 'events#index'
post '/events/add', to: 'events#new'
# get '/events', to: 'events#index'
# post '/create', to: 'events#create'
# post '/edit/users/:id', to: 'users#edit'
# get '/show/users/:id', to: 'users#show'
# get '/show/events', to: 'events#show'
# post '/join/events/:id', to: 'events#join'
# post '/edit/events/:id', to: 'events#edit'
# get '/destroy/events/:id', to: 'events#destroy'
# patch '/cancel/events/:id', to: 'events#cancel'
# post '/create_com/events/user:id/event:id', to: 'events#create_com'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

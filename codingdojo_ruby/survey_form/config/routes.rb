Rails.application.routes.draw do
  post '/create', to: 'survey#create'
  get '/', to: 'survey#index'
  get '/show', to: 'survey#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

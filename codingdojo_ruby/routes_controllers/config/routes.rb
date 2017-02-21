Rails.application.routes.draw do
  get '/hello/' => 'hello#index'
  get '/say/hello' => 'say#index'
  get '/times/' => 'times#index'
  get '/times/restart' => 'times#restart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

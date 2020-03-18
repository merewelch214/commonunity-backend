Rails.application.routes.draw do

  get '/users', to: 'users#index'
  
  get '/posts', to: 'posts#index'
  post '/posts', to: 'posts#create'
  post '/users', to: 'users#create'

  get '/check_ins', to: 'check_ins#index'
  post '/check_ins', to: 'check_ins#create'
  patch '/check_ins_by_user_id/:user_id', to: 'check_ins#update'
  get '/check_ins_by_user_id/:user_id', to: 'check_ins#show'
  get '/safety_concerns_by_user_id/:user_id', to: 'safety_concerns#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'users#login'
  post '/safety_concern', to: 'safety_concerns#create'
  get '/safety_concerns', to: 'safety_concerns#index'
  patch '/safety_concerns/:id', to: 'safety_concerns#update'

  mount ActionCable.server, at: '/cable'
end

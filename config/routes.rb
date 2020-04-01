Rails.application.routes.draw do

  get '/users', to: 'users#index'

  resources 'posts' do
    resources 'likes', except: [:put, :patch, :show]
  end
  
  post '/users', to: 'users#create' 
  post '/signup', to: 'users#create'
  post '/login', to: 'users#login'

  post '/safety_concern', to: 'safety_concerns#create'
  get '/safety_concerns', to: 'safety_concerns#index'
  patch '/safety_concerns/:id', to: 'safety_concerns#update'
  get '/safety_concerns_by_user_id/:user_id', to: 'safety_concerns#show'

  get '/check_ins', to: 'check_ins#index'
  post '/check_ins', to: 'check_ins#create'
  patch '/check_ins_by_user_id/:user_id', to: 'check_ins#update'
  get '/check_ins_by_user_id/:user_id', to: 'check_ins#show'



  


  mount ActionCable.server, at: '/cable'
end

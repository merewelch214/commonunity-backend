Rails.application.routes.draw do

  get '/users', to: 'users#index'
  # post '/users', to: 'users#create' # confirm this is being used somewhere
  post '/signup', to: 'users#create'
  post '/login', to: 'users#login'

  get '/latest_unique_check_ins', to: 'check_ins#unique_index'
  get '/users/:user_id/latest_check_in', to: 'check_ins#latest_check_in'
  post '/users/:id/check_ins', to: 'check_ins#create'
  patch '/check_ins_by_user_id/:user_id', to: 'check_ins#update'


  post '/safety_concern', to: 'safety_concerns#create'
  get '/safety_concerns', to: 'safety_concerns#index'
  get '/any_safety_concern', to: 'safety_concerns#any_concern'
  patch '/safety_concerns/:id', to: 'safety_concerns#update'
  get '/users/:user_id/safety_concerns', to: 'safety_concerns#latest_concern'

  resources 'posts' do
    resources 'likes', only: [:index, :create, :destroy]
  end

  resources 'posts' do
    resources 'comments', only: [:index, :create, :destroy]
  end

  get '/comments/:id', to: 'comments#show'

  mount ActionCable.server, at: '/cable'
end

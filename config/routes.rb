Rails.application.routes.draw do

  get '/posts', to: 'posts#index'
  post '/post', to: 'posts#create'

  get '/check_ins', to: 'check_ins#index'
  post '/check_ins', to: 'check_ins#create'
  patch '/check_ins_by_user_id/:user_id', to: 'check_ins#update'
  get '/check_ins_by_user_id/:user_id', to: 'check_ins#show'

  mount ActionCable.server, at: '/cable'
end

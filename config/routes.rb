Rails.application.routes.draw do
  
  post '/posts' to: 'posts#create'
  get '/posts' to: 'posts#index'

  mount ActionCable.server, at: '/cable'
end

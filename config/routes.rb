Rails.application.routes.draw do

  resources :posts
  resources :check_ins

  mount ActionCable.server, at: '/cable'
end

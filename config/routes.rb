Rails.application.routes.draw do
  root 'users#index'
  #---------------------------->
  get    '/new',   to: 'users#new'
  post   '/new',   to: 'users#create'
  get    '/show',    to: 'users#show'
  #--------------------------->
end

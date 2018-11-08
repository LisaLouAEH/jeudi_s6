Rails.application.routes.draw do
  root 'users#index'
  #---------------------------->
  get    '/new',   to: 'users#new'
  post   '/show',   to: 'users#show'
  get    '/show',    to: 'users#show'
  #--------------------------->
end

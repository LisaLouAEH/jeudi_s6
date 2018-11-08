Rails.application.routes.draw do
  root 'users#index'
  #---------------------------->
  
  post   '/',   to: 'users#show'
  get    '/show',    to: 'users#show'
  #--------------------------->
end

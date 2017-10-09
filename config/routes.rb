Rails.application.routes.draw do

  

  root 'sessions#new'
  get '/login/:identity', to: 'sessions#new'
  post '/login/:identity', to: 'sessions#create'
  delete '/logout/identity', to: 'sessions#destroy'
  resources :students
  resources :projects
  resources :batches
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

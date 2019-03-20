Rails.application.routes.draw do
  get '/' => 'chirps#index'
  get '/chirps' => 'chirps#index'
  get '/chirps/new' => 'chirps#new'
  post '/chirps' => 'chirps#create'
  get '/chirps/:id' => 'chirps#show'
  get '/chirps/:id/edit' => 'chirps#edit'
  put '/chirps/:id' => 'chirps#update'
  delete '/chirps/:id' => 'chirps#destroy'
end

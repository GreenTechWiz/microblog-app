Rails.application.routes.draw do
  get '/chirps' => 'chirps#index'
  get '/chirps/new' => 'chirps#new'
  post '/chirps' => 'chirps#create'
  get '/chirps/:id' => 'chirps#show'
end

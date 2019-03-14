Rails.application.routes.draw do
  get '/chirps' => 'chirps#index'
  get '/chirps/:id' => 'chirps#show'
end

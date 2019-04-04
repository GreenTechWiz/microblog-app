Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'chirps#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'


  get '/chirps' => 'chirps#index'
  get '/chirps/new' => 'chirps#new'
  post '/chirps' => 'chirps#create'
  get '/chirps/:id' => 'chirps#show'
  get '/chirps/:id/edit' => 'chirps#edit'
  put '/chirps/:id' => 'chirps#update'
  delete '/chirps/:id' => 'chirps#destroy'
  post '/chirps/:chirp_id/comments' => 'comments#create'
  get '/chirps/:id/comments' => 'chirps#show'
  delete '/chirps/:chirp_id/comments/:comment_id' => 'comments#destroy'
  post '/users/:followee_id/relationships' => 'relationships#create'
end

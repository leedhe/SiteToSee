Rails.application.routes.draw do
  #------------------------------

  # Routes for the User_collection resource:
  # CREATE
  get '/new_user_collection' => 'user_collections#new'
  get '/create_user_collection' => 'user_collections#create'

  # READ
  get '/user_collections' => 'user_collections#index'
  get '/user_collections/:id' => 'user_collections#show'

  # UPDATE
  get '/user_collections/:id/edit' => 'user_collections#edit'
  get '/user_collections/:id/update' => 'user_collections#update'

  # DELETE
  get '/user_collections/:id/destroy' => 'user_collections#destroy'

  #------------------------------

  # Routes for the Collection resource:
  # CREATE
  get '/new_collection' => 'collections#new'
  get '/create_collection' => 'collections#create'
  get '/add_collection' => 'collection#add_collection'

  # READ
  get '/collections' => 'collections#index'
  get '/collections/:id' => 'collections#show'

  # UPDATE
  get '/collections/:id/edit' => 'collections#edit'
  get '/collections/:id/update' => 'collections#update'

  # DELETE
  get '/collections/:id/destroy' => 'collections#destroy'
  #------------------------------


  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  # ROUTES FOR THE SESSIONS
  
  get '/sessions/new' => 'sessions#new'
  get '/create_sessions' => 'sessions#create'
  
  get '/sessions/destroy' => 'sessions#destroy'
  get '/in_user' => 'sessions#new'
  ##
   # HOME ROUTE
  get '/home' => 'home#home'
  
  # MISCELLANEOUS ROUTES
end

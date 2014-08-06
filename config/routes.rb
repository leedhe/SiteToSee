Rails.application.routes.draw do
  # Routes for the Collection_panel resource:
  # CREATE
  get '/new_collection_panel' => 'collection_panels#new'
  get '/create_collection_panel' => 'collection_panels#create'

  # READ
  get '/collection_panels' => 'collection_panels#index'
  get '/collection_panels/:id' => 'collection_panels#show'

  # UPDATE
  get '/collection_panels/:id/edit' => 'collection_panels#edit'
  get '/collection_panels/:id/update' => 'collection_panels#update'

  # DELETE
  get '/collection_panels/:id/destroy' => 'collection_panels#destroy'
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

  # Routes for the Website_collection resource:
  # CREATE
  get '/new_website_collection' => 'website_collections#new'
  get '/create_website_collection' => 'website_collections#create'

  # READ
  get '/website_collections' => 'website_collections#index'
  get '/website_collections/:id' => 'website_collections#show'

  # UPDATE
  get '/website_collections/:id/edit' => 'website_collections#edit'
  get '/website_collections/:id/update' => 'website_collections#update'

  # DELETE
  get '/website_collections/:id/destroy' => 'website_collections#destroy'
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

  # Routes for the Website resource:
  # CREATE
  get '/new_website' => 'websites#new'
  get '/create_website' => 'websites#create'

  # READ
  get '/websites' => 'websites#index'
  get '/websites/:id' => 'websites#show'

  # UPDATE
  get '/websites/:id/edit' => 'websites#edit'
  get '/websites/:id/update' => 'websites#update'

  # DELETE
  get '/websites/:id/destroy' => 'websites#destroy'
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

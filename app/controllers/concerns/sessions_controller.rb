class SessionsController < ApplicationController
  def new
  end
  
  def create
    @collections = Collection.all
    
    u = User.find_by(name: params['username'])
    if u && u.authenticate(params['password'])
      session['user_id'] = u.id
      if u.user_collections.count == 0
        redirect_to '/new_collection'
      else 
        redirect_to '/collections'
      end
    else 
      redirect_to '/sessions/new'
    end
  end
  
  def destroy
    reset_session
    redirect_to '/users'
  end
end
class UserCollectionsController < ApplicationController

  def index
    @user_collections = UserCollection.all
  end

  def show
    @user_collection = UserCollection.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user_collection = UserCollection.new
    @user_collection.user_id = params[:user_id]
    @user_collection.collection_id = params[:collection_id]

    if @user_collection.save
      redirect_to "/user_collections/#{ @user_collection.id }"
    else
      render 'new'
    end
  end

  def edit
    @user_collection = UserCollection.find_by(id: params[:id])
  end

  def update
    @user_collection = UserCollection.find_by(id: params[:id])
    @user_collection.user_id = params[:user_id]
    @user_collection.collection_id = params[:collection_id]

    if @user_collection.save
      redirect_to "/user_collections/#{ @user_collection.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @user_collection = UserCollection.find_by(id: params[:id])
    @user_collection.destroy


    redirect_to "/user_collections"
  end
end

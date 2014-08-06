class WebsiteCollectionsController < ApplicationController

  def index
    @website_collections = WebsiteCollection.all
  end

  def show
    @website_collection = WebsiteCollection.find_by(id: params[:id])
  end

  def new
  end

  def create
    @website_collection = WebsiteCollection.new
    @website_collection.website_id = params[:website_id]
    @website_collection.collection_id = params[:collection_id]

    if @website_collection.save
      redirect_to "/website_collections/#{ @website_collection.id }"
    else
      render 'new'
    end
  end

  def edit
    @website_collection = WebsiteCollection.find_by(id: params[:id])
  end

  def update
    @website_collection = WebsiteCollection.find_by(id: params[:id])
    @website_collection.website_id = params[:website_id]
    @website_collection.collection_id = params[:collection_id]

    if @website_collection.save
      redirect_to "/website_collections/#{ @website_collection.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @website_collection = WebsiteCollection.find_by(id: params[:id])
    @website_collection.destroy


    redirect_to "/website_collections"
  end
end

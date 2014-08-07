class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find_by(id: params[:id])
  end

  def new
  end

  def create
    @collection = Collection.new
    @collection.site_name = params[:site_name]
    @collection.site_id = params[:site_id]
    @collection.site_url = params[:site_url]
    @collection.site_name = params[:site_name]
    @collection.site_url = params[:site_url]

    if @collection.save
      redirect_to "/collections"
    else
      render 'new'
    end
  end

  def edit
    @collection = Collection.find_by(id: params[:id])
  end

  def update
    @collection = Collection.find_by(id: params[:id])
    @collection.site_name = params[:site_name]
    @collection.site_id = params[:site_id]
    @collection.site_url = params[:site_url]
    

    if @collection.save
      redirect_to "/collections"
    else
      render 'edit'
    end
  end
  
  def add_collection
  end

  def destroy
    @collection = Collection.find_by(id: params[:id])
    @collection.destroy


    redirect_to "/collections"
  end
end

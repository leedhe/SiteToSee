class CollectionsController < ApplicationController

  def index
    
    search = params['search']
    
    if search
      search_category = Collection.where(c_name: search)
      search_site = Collection.where(site_name: search)
      search_url = Collection.where(site_url: search)
      @collections = search_category + search_site + search_url
    else
      @collections = Collection.all
    end
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
    @collection.description = params[:description]
    @collection.c_name = params[:c_name]

    if @collection.save
      redirect_to "/collections", :notice => "Collection entry added."
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
    @collection.description = params[:description]
    @collection.c_name = params[:c_name]

    if @collection.save
      redirect_to "/collections", :notice => "Collection entry updated."
    else
      render 'edit'
    end
  end

  def destroy
    @collection = Collection.find_by(id: params[:id])
    @collection.destroy


    redirect_to "/collections"
  end
end

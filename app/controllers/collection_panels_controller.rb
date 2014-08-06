class CollectionPanelsController < ApplicationController

  def index
    @collection_panels = CollectionPanel.all
  end

  def show
    @collection_panel = CollectionPanel.find_by(id: params[:id])
  end

  def new
  end

  def create
    @collection_panel = CollectionPanel.new
    @collection_panel.name = params[:name]
    @collection_panel.links = params[:links]
    @collection_panel.user_id = params[:user_id]

    if @collection_panel.save
      redirect_to "/collection_panels/#{ @collection_panel.id }"
    else
      render 'new'
    end
  end

  def edit
    @collection_panel = CollectionPanel.find_by(id: params[:id])
  end

  def update
    @collection_panel = CollectionPanel.find_by(id: params[:id])
    @collection_panel.name = params[:name]
    @collection_panel.links = params[:links]
    @collection_panel.user_id = params[:user_id]

    if @collection_panel.save
      redirect_to "/collection_panels/#{ @collection_panel.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @collection_panel = CollectionPanel.find_by(id: params[:id])
    @collection_panel.destroy


    redirect_to "/collection_panels"
  end
end

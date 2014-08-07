class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def show
    @website = Website.find_by(id: params[:id])
  end

  def new
  end

  def create
    @website = Website.new
    @website.site_url = params[:site_url]
    @website.site_name = params[:site_name]

    if @website.save
      redirect_to "/collections"
    else
      render 'new'
    end
  end

  def edit
    @website = Website.find_by(id: params[:id])
  end

  def update
    @website = Website.find_by(id: params[:id])
    @website.site_url = params[:site_url]
    @website.site_name = params[:site_name]

    if @website.save
      redirect_to "/collections"
    else
      render 'edit'
    end
  end

  def destroy
    @website = Website.find_by(id: params[:id])
    @website.destroy


    redirect_to "/websites"
  end
end

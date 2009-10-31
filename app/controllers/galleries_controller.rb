class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.find(:all)
  end
  
  def show
    @gallery = Gallery.find(params[:id], :include => :photos)
    @photos = @gallery.photos.approved.paginate(:page => params[:page])
  end
end

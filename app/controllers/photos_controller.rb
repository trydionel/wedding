class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end
  
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @photo = @gallery.photos.build(params[:photo])
    if @photo.save
      flash[:notice] = "Thank you for posting.  We will approve your photo shortly."
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end
end

class PhotosController < ApplicationController
  def index
    @photos = Photo.approved.paginate(:all, :page => params[:page], :per_page => 6)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      flash[:notice] = "Thank you for posting.  We will approve your photo shortly."
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end
end

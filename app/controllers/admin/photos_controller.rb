class Admin::PhotosController < ApplicationController

  before_filter :login_required
  before_filter :find_photo, :only => [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.paginate(:all, :page => params[:page], :per_page => 6)
  end

  def show
  end

  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(params[:photo])
    @photo.approved = true
    if @photo.save
      flash[:notice] = "Successfully posted photo"
      redirect_to photo_path(@photo)
    else
      render :action => 'new'
    end
  end

  def edit
  end
  
  def update
    if @photo.update_attributes(params[:photo])
      flash[:notice] = "Successfully updated photo"
      redirect_to photo_path(@photo)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @photo.destroy
    redirect_to photos_path
  end

protected

  def find_photo
    @photo = Photo.find(params[:id])
  end

end

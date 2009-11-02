class Admin::RsvpsController < ApplicationController
  def index
    @rsvps = Rsvp.paginate(:page => params[:page])
    @count = Rsvp.sum(:guest_count, :conditions => { :attending => true })
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

end

class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end
  
  def create
    @rsvp = Rsvp.new(params[:rsvp])
    if @rsvp.save
      flash[:notice] = "Thank you for your response."
      redirect_to root_path
    else
      render :action => :new
    end
  end
end

class CommentsController < ApplicationController
  trap_door :only => :create
  
  def new
    @comment = Comment.new
  end
  
  def create
    build_commentable
    @comment = @commentable.comments.build(params[:comment])
    if @comment.save
      respond_to do |wants|
        wants.html do
          flash[:notice] = "Successfully posted comment"
          redirect_to @commentable
        end
        wants.js do
          render
        end
      end
    else
      render :action => :new
    end
  end

  protected
  
  def build_commentable
    @commentable_type = params[:comment].delete(:commentable_type)
    @commentable_id = params[:comment].delete(:commentable_id)
    if @commentable_type && @commentable_id
      @klass = @commentable_type.classify.constantize
      @commentable = @klass.find(@commentable_id)
    end
  end

end

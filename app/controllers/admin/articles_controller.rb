class Admin::ArticlesController < ApplicationController

  before_filter :login_required
  before_filter :find_article, :only => [:edit, :update, :destroy]
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    @article.user = current_user
    if @article.save
      flash[:notice] = "Successfully posted article"
      redirect_to article_path(@article)
    else
      render :action => 'new'
    end
  end

  def edit
  end
  
  def update
    if @article.update_attributes(params[:article])
      flash[:notice] = "Successfully updated article"
      redirect_to article_path(@article)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @article.destroy
    redirect_to articles_path
  end
    
protected

  def find_article
    @article = Article.find(params[:id])
  end

end

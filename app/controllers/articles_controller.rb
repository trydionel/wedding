class ArticlesController < ApplicationController
  def index
    @articles = Article.paginate(:all, :page => params[:page], :per_page => 5)
  end

  def show
    @article = Article.find(params[:id])
  end

end

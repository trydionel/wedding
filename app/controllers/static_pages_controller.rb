class StaticPagesController < ApplicationController
  
  def show
    @page = StaticPage.find_by_href(params[:id])
  end

end

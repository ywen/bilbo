class PagesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @pages = Page.all
  end

  def show
    # @page = Page.find params[:id]
  end
end

class HomeController < ApplicationController
  def index
    @wiki = Gollum::Wiki.new("wiki")
    p @wiki.pages.methods.sort
  end

end

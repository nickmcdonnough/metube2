class PagesController < ApplicationController
  def index
    @video = Video.last
    @sound = Sound.last
  end

  def about
  end

  def contact
  end
end

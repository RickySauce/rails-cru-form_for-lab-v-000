class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create()
  end

  private 

  def artist_params(*args)
    params.require(:artists).permit(*args)
  end
end

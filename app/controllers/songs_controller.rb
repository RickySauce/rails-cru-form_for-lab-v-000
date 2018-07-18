class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    binding.pry
  end

  def edit
  end

  def update
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

end

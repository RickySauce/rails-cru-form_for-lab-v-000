class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def create
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

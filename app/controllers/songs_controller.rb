class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(post_params(:name))
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

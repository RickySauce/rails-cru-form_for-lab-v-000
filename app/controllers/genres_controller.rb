class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
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

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end

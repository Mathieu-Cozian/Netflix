class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Movie was created successfully."

    else
      render :new, notice: "Movie was not created."
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end
end

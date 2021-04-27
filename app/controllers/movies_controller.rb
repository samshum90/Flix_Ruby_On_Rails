class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def show
    @movies = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end
  def new
      @movie = Event.new
  end
  def create
      @movie = Event.new(movie_params) 
      @movie.save
      redirect_to @movie
  end
    
private

    def movie_params
        params.require(:movie).
            permit(:title, :description, :rating, :released_on, :total_gross)
    end
end

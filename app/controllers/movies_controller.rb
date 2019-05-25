class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  # GET /movies
  def index
    if params[:genre].blank?
			@movies = Movie.all.order("created_at DESC")
		else
			@genre_id = Genre.find_by(name: params[:genre]).id
			@movies = Movie.where(genre_id: @genre_id).order("created_at DESC")
		end
  end

  # GET /movies/1
  def show
  end

  # GET /movies/new
  def new
    @movie = current_user.movies.build
    @genres = Genre.all.order('name').map{ |g| [g.name, g.id]}
  end

  # POST /movies
  def create
    @movie = current_user.movies.build(movie_params)
    @movie.genre_id = params[:genre_id]

    if @movie.save
      redirect_to root_path
    else
      render 'new' 
    end
  end

  # GET /movies/1/edit
  def edit
    @genres = Genre.all.order('name').map{ |g| [g.name, g.id]}
  end

  # PATCH/PUT /movies/1
  def update
    @movie.genre_id = params[:genre_id]
    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end
  end


  # DELETE /movies/1
  def destroy
    @movie.destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :director, :genre_id)
    end
end

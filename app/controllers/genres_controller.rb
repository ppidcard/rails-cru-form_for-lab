class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        @genre.save
        redirect_to @genre
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to @genre
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def index

    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end

end
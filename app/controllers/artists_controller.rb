class ArtistsController < ApplicationController
	def show
		@genre = Genre.find(params[:genre_id])
		@artist = @genre.artists.find(params[:id])
	end

	def index
		@artists = Artist.all
	end

	def create
		@genre = Genre.find(params[:genre_id])
		@artist = @genre.artists.create(artist_params) 
		if @artist.save
			redirect_to artist_path(@artist)
		else
			render :new
		end
	end

	def new
		@artist = Artist.new
	end

	def update
		@genre = Genre.find(params[:genre_id])
		@artist = genre.artists.find(params[:id])
		if @artist.update(artist_params)
			redirect_to genre_artist_path(@artist)
		else
			render :edit
		end

	end

	def destroy
		@artist = Artist.find(params[:id])
		@artist.destroy
		redirect_to artists_path
	end

	def edit
		@genre = Genre.find(params[:genre_id])
		@artist = @genre.artists.find(params[:id])
	end

	private
	def artist_params
		params.require(:artist).permit(:name, :bio)
	end

end

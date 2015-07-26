class ArtistsController < ApplicationController
	def show
		@artist = Artist.find(params[:id])
	end

	def index
		@artists = Artist.all
	end

	def create
		@genres = Genre.find(params[:id])
		
		@artist = Artist.new(artist_params)
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
		@artist = Artist.find(params[:id])
		if @artist.update(artist_params)
			redirect_to artist_path(@artist)
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
		@artist = Artist.find(params[:id])
	end

	private
	def artist_params
		params.require(:artist).permit(:name, :bio)
	end

end

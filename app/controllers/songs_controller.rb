class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: {message: songs}
  end
  def show
    song_id = params[:id]
    song = Song.find_by(id: song_id)
    render json: {message: song}
  end
  def create
    song = Song.create(title: params["title"], artist: params["artist"], year: params["year"], album: params["album"])

    render json: song
  end
end

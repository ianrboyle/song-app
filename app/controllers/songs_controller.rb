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
end

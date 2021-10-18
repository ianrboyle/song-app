class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: {message: song}
  end
end

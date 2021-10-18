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
  def update
    song_id = params[:id]
    song = Song.find_by(id: song_id)
    song.title = params["title"] || song.title
    song.artist = params["artist"] || song.artist
    song.year = params["year"] || song.year
    song.album = params["album"] || song.album
    song.save
    render json: song
  end
  def destroy
    song_id = params[:id]
    song = Song.find_by(id: song_id)
    song.delete
    render json: {message: "Song Destroyed"}
  end
end

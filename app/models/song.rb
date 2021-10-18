class Song < ApplicationRecord
  5.times do
    Song.create(title: FFaker::Music.song, album: FFaker::Music.album, artist: FFaker::Music.artist, year: FFaker::Vehicle.year)
  end

end

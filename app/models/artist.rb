class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    first_song = songs.order(created_at: :asc).first
    first_song&.genre
  end

  def song_count
    songs.count
  end

  def genre_count
    genres.distinct.count
  end
end


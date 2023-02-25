class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    artists.distinct.count
  end

  def all_artist_names
    artists.distinct.pluck(:name)
  end
end

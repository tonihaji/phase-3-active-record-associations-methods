class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    drake = Artist.find_by(name: 'Drake')
    drake ||= Artist.create(name: 'Drake')
    self.artist = drake
  end
end

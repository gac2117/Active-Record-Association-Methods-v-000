class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count # return the number of songs in a genre
  end

  def artist_count
    self.artists.count # return the number of artists associated with the genre
  end

  def all_artist_names
    artist_array = []
    self.artists do |a|
      a.name >> artist_array
    end
    artist_array
  end
end

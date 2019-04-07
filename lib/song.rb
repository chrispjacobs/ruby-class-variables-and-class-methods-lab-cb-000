
class Song
  @@count = 0
  @@genres_hash = {}
  @@artists = []
  @@genres = []
  @@unique_artists = {}
  @@artist_count = {}
  def initialize(name, artist, genre)
    @@count += 1
    @artist = artist
    @@artists << artist
    if @@unique_artists[@artist] == nil
      @@unique_artists[@artist] = "check"
      @@artist_count[@artist] = 1
    else
      @@artist_count[@artist] += 1
    end
    @name = name
    @genre = genre
    duplicate_case = false
    if @@genres_hash == {}
      @@genres_hash[@genre] = 1
      @@genres << @genre
    else @@genres_hash.each do |genre, number|
      if @@genres_hash[@genre] != nil
        @@genres_hash[@genre] += 1
        duplicate_case = true
        @@genres << @genre
      end
    end
    if duplicate_case == false && @@genres_hash != {}
      @@genres_hash[@genre] = 1
      @@genres << @genre
    end
  end
end
  def artist
    @artist
  end
  def self.artists
    unique_artists_array = []
    @@unique_artists.each do |artist, check|
      unique_artists_array << artist
    end
    unique_artists_array
  end
  def genre
    @genre
  end
  def self.genres
    stupid_new_genres_array = []
    @@genres_hash.each do |genre, number|
      stupid_new_genres_array << genre
    end
    stupid_new_genres_array
  end
  def self.crappy_genres
    @@genres
  end
  def name
    @name
  end
  def self.genre_count
    @@genres_hash
  end
  def self.count
    @@count
  end
  def self.artist_count
    @@artist_count
  end
end

#lucifer = Song.new("Lucifer", "Jay-Z", "rap")
#ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
#hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
#toxicity = Song.new("Toxicity", "System of a Down", "heavy metal")
#puts Song.artists

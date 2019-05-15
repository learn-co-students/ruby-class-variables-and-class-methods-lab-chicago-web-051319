class Song
  attr_reader :name,:artist,:genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@artists<< artist
    @@count+=1
    @@genres<< genre
  end
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    final_genre_count={}
    @@genres.each do |genre|
      final_genre_count[genre]=@@genres.count(genre)
    end
    final_genre_count
  end

  def self.artist_count
    final_artist_count={}
    @@artists.each do |artist|
      final_artist_count[artist]=@@artists.count(artist)
    end
    final_artist_count
  end
end

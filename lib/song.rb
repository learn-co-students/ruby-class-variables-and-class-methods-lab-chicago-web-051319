class Song
  
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(_name, _artist, _genre)
    @name = _name
    @artist = _artist
    @@artists << _artist 
    @genre = _genre
    @@genres << @genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.count=(num)
    @@count = num
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    res = {}
    @@genres.each do |i|
      if !res.include?(i)
        puts "Res does not have #{i}"
        res[i] = 1
      else
        res[i] += 1
      end
    end
    return res
  end
  
  def self.artist_count
    res = {}
    @@artists.each do |i|
      if !res.include?(i)
        res[i] = 1
      else
        res[i] += 1
      end
    end
    
    return res
  end
end
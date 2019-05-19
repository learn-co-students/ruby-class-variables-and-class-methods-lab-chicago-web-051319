class Song 
    attr_accessor :name, :artist, :genre
    @@count = 0 
    
    @@artists = []
    @@genres = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre 
       
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
        gcount = Hash.new
        Song.genres.each do
            |key|  gcount[key] = 0
        end
        gcount.each do |key, value| 
          @@genres.each do |genre|
            if genre == key 
            gcount[key] += 1
              end
            end
        end
        gcount 
    end
    
    def self.artist_count
        gcount = Hash.new
        Song.artists.each do
            |key|  gcount[key] = 0
        end
        gcount.each do |key, value| 
          @@artists.each do |artist|
            if artist == key 
            gcount[key] += 1
              end
            end
        end
        gcount 
    end
    
    
end

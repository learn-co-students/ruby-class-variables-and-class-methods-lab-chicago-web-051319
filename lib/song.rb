class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        counted_genres = {}
        @@genres.each do |genre|
            if !counted_genres.keys.include?(genre)
                counted_genres[genre] = 0
                counted_genres[genre] += 1
            else
                counted_genres[genre] += 1
            end
        end
        counted_genres
    end

    def self.artist_count
        counted_artists = {}
        @@artists.each do |artist|
            if !counted_artists.keys.include?(artist)
                counted_artists[artist] = 1
            else
                counted_artists[artist] += 1
            end
        end
        counted_artists
    end
end
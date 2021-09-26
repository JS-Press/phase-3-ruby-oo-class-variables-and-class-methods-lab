class Song 

    @@artists = []
    @@songs = []
    @@genres = []
    @@count = 0

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @artist = artist
        @name = name
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@songs << name
        @@count = @@count + 1
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists 
        @@artists.uniq
    end

    def self.count 
        @@count
    end

   def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash[genre] ||= 0
            hash[genre] += 1
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |genre|
            hash[genre] ||= 0
            hash[genre] += 1
        end
        hash
    end

end
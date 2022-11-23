require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        genres_hash = {}   
        @@genres.each do |elem|
            if genres_hash[elem]
                genres_hash[elem] += 1
            else
                genres_hash[elem] = 1
            end
        end
        genres_hash
    end

    def self.artist_count 
        artists_hash = {}
        @@artists.each do |artist|
            if artists_hash[artist]
                artists_hash[artist] += 1
            else
                artists_hash[artist] = 1
            end
        end
        artists_hash
    end

end

#{"pop"=>1, "rap"=>2}

song1 = Song.new("sky", "maxim", "pop")
song2 = Song.new("sky", "maxim", "rap")
song3 = Song.new("sky", "maxim", "rap")
song3 = Song.new("sky", "maxim", "pop")


# binding.pry



class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name, artist = Artist.new("unknown name"))
        @name = name
        @artist = artist
        @@all << self
    end
    def self.all
        @@all
    end
    def artist_name
        if self.artist.name != "unknown name"
            return self.artist.name
        end
        nil
    end





end

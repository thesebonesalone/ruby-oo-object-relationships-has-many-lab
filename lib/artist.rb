


class Artist
    attr_accessor :name, :songs
    
    def initialize(name = "unknown artist")
        @name = name
    end

    def add_song(song)
        song.artist = self
    end
    def add_song_by_name(name)
        song = Song.new(name, self)
    end


    def songs
        Song.all.select { |n| n.artist == self}
    end

    def self.song_count
        Song.all.length
    end



        









end

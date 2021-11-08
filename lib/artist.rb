class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def songs
        Song.all.select do |song_instance|
            if song_instance.artist == self
                song_instance
            end
        end
    end
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def self.song_count
        Song.all.length
    end

end


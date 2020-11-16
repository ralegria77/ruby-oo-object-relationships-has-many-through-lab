class Genre

    attr_accessor :name, :artist, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self} #has many #array of songs by genre
    end

    def artists
        songs.map {|song| song.artist} #has many through songs
    end


end
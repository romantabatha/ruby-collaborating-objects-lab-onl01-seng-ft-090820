class Artist

    attr_accessor :name, :songs
    @@all = []
  
    def initialize(name)
      @name = name
      @songs = []
      save
    end
  
    def self.all
      @@all
    end
  
    def add_song(song)
      @songs << song
    end
  
    def save
      @@all << self
    end
  
    def self.find_or_create_by_name(name)
      if self.find(name)
        self.find(name)
      else
        self.create(name)
      end
    end
  
    def self.find(name)
      self.all.detect { |artist| artist.name == name }
    end
  
    def self.create(name)
      artist = Artist.new(name)
      artist
    end
  
    def print_songs
      puts @songs.collect {|song| song.name}
    end
  
  end 
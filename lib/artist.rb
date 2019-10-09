class Artist 
  attr_accessor :name, :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(songs)
    song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist = self}
  end
end
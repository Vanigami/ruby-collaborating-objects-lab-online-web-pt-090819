class Artist 
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(songs)
    song.artist = self
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def self.find(name)
    self.all.find{|artist| artist.name == name}
  end
  
  def self.create(name)
    artist = self.new 
    @@all << name 
    name
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
end
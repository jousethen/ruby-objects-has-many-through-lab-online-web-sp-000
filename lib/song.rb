class Song 
  attr_accessor :name, :genre, :artist
  @@all = []
  
  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    
    @@all << self
  end
  
  def self.all
    @@all
  end
end 
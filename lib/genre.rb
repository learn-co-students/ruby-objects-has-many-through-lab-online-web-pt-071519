class Genre 
  
  attr_reader :name 
  attr_accessor :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
   # @artist = artist 
    @songs = songs
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists(songs) 
  end 
  
end 
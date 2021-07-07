class Genre 
  
  attr_reader :name 
  attr_accessor #:songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
   # @artist = artist 
    #@songs = []
    @@all << self 
  end 
  
  def songs
    Song.all { |song| song.genre == self }
  end
  
  def self.all 
    @@all 
  end 
  
  def artists 
     songs.map do |x|
   x.artist  
  # binding.pry
  end 
end

  
end 
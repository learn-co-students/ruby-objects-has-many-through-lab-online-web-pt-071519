require "pry"
class Genre
  attr_accessor :name
  
  @@all=[]
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def songs 
    Song.all.map {|song| song if song.genre == self}
  end 
  
  def artists
    #binding.pry
    songs.map {|artist| artist }
  end 
  
end
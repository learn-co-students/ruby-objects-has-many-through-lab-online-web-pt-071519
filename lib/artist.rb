require "pry"

class Artist 
  
attr_reader :name 
attr_accessor :songs, :genre, :artist 

@@all = []

def initialize(name)
  @name = name 
  @songs = []
  @genre = genre
  @@all << self 
  #self
end 

def self.all 
  @@all 
end 

def songs
  Song.all.select do |song|
  song.artist == self
    #@songs
    #binding.pry
    
 end  
end 

def new_song(name, genre)
 # binding.pry 
 song = Song.new(name, self, genre) 
  @songs << song 
  #Song.new(name, self, genre)
song
end 

def genres
  artist_songs_genre = []
  songs.each do |x|
 artist_songs_genre << x.genre
    artist_songs genre
 # binding.pry 
  #Song.all.genre
 #binding.pry
end 
end 

end 
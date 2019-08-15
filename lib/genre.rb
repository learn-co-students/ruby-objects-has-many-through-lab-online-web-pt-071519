class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def songs
    Song.all {|song| song.genre == self}
  end

  def artists
    Artist.all {artist| artist.genre == self}
  end


end
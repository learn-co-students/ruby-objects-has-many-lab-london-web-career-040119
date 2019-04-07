class Artist # create class
  attr_accessor :name # give us name method and access to it

  @@all = [] # has a class variable all set to empty array

  def initialize(name) # initialize with name
    @name = name # set instance variable name = to the name thats passed
    @@all << self # pushes every instance into the class variable array all
  end

  def self.all # class method
    @@all # prints the array "all"
  end

  def add_song(song) # method to add song - takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
    song.artist = self # set the song.artist to = the instance
  end

  def add_song_by_name(name) # takes in an argument of a song name, creates a new song with it and associates the song and artist
    song = Song.new(name) # creats a new song and sets = to the name passed
    song.artist = self # associates the new song with the artist
  end

  def songs
    Song.all.select {|song| song.artist == self} # takes the class Song and the class variable all to select song.artist to match the current instance
  end

  def self.song_count # this class method will return the total number of songs associated to all the existing artists
    Song.all.count # use the .count method to give us a total 
  end
end

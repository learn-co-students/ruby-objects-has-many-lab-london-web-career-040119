class Artist
  attr_accessor :name, :songs, :artist

 def initialize(name)
   @name = name
   @songs = []
 end

 def songs
 Song.all.select{|song|song.artist == self}
 end

 def add_song(song)   # method to add song - takes in an argument of a song and
                       #associates that song with the artist by telling the song that
                       #it belongs to that artist.
    song.artist= self
   @songs << song
 end

 def add_song_by_name(name)
   new_song=Song.new(name)
   new_song.artist= self
    @songs << new_song
 end

 def songs  #return an array of all songs of an artist.
   Song.all.select{|song| song.artist == self} # all songs from Song class,
                                             #if song.artist match the current object artist
 end

 def self.song_count  #return the total number of songs associated to all the existing artists
    Song.all.count    # array.count method return the number of elements of the array
 end
end

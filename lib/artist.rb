class Artist

  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song_name)
    song_name.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs.push(song)
    song.artist = self
  end

  def self.song_count
    Song.all.length
  end



end

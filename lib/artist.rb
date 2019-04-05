class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def add_song_by_name(songname)
    song = Song.new(songname)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    @songs << title
    title.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end

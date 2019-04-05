class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def artist_name
    return nil unless artist

    artist.name
  end

  def self.all
    @@all
  end
end

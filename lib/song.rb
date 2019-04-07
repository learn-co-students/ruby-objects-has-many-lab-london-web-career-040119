class Song
  attr_accessor :name, :artist

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @artist
  end

  def self.all
    @@all
  end

    def artist_name    #return the names of the artist of the given song respectively.
      if artist
        @artist.name
      end
    end
end

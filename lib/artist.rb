require 'pry'
require_relative '../lib/song.rb'

class Artist

  attr_accessor :name, :songs, :all

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@all << song
  end

  def self.song_count
    @@all.length
  end

end

require 'pry'
require_relative '../lib/artist.rb'

class Song

  attr_accessor :all, :artist
  attr_reader :name

  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def artist_name
  if @artist == nil
    nil
  else
    @artist.name
  end
end

end

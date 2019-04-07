require 'pry'
require_relative '../lib/author.rb'

class Post

  attr_accessor :title, :author, :all

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

  def self.all
    @@all
  end

end

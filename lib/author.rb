require 'pry' # using pry

class Author # setting Author class
  attr_accessor :name # giving access to method name

  @@all = [] # using class variable to set equal to empty array

  def initialize(name) # initialize name
    @name = name # set name instance = the name we pass
    @@all << self # push each instance into the class variable all
  end

  def self.all # this class method is used to print the class variable all
    @@all
  end

  def add_post(post) # follows as in artist
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Post.all.count
  end
end

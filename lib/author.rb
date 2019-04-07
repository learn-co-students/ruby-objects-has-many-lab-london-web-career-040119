
require 'pry'
require_relative '../lib/post.rb'

class Author

attr_accessor :name, :posts, :all

@@all = []

def initialize(name)
  @name = name
  @posts = []
end

def add_post(post)
  Post.new(post)
  @posts << post
  post.author = self
  @@all << post
end

def add_post_by_title(post_title)
  post = Post.new(post_title)
  @posts << post
  post.author = self
  @@all << post
end

def self.post_count
  @@all.length
end

end

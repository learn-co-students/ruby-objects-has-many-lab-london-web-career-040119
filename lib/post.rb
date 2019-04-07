class Post

  attr_accessor :author, :title
  @@all=[]

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name  #return the names of the author of the given post respectively.
    if author
      @author.name
    end
  end 


end

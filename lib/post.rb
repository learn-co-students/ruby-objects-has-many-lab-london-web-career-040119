class Post

  attr_accessor :all, :author
  attr_reader :title


  @@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if self.author
  end




end

class Author

  attr_accessor :post, :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select { |post| post.author == self}
  end

  def add_post(post)
    @posts = []
    post.author = self
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.count
  end

end

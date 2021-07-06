class Author

  attr_accessor :posts
  attr_reader :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts.push(post)
    post.author = self
  end

  def self.post_count
    Post.all.size
  end


end

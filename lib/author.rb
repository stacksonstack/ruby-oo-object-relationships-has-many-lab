class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author = self}
    end

    def songs
        Song.all.select {|song| song.artist == self}
      end
  
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(name)
        song = Post.new(name)
        song.author = self
    end

    def self.post_count
        Post.all.count
    end

end
class Post
    @@all = []
    attr_accessor :title, :author
    def initialize(title, author = Author.new("unknown author"))
        @title = title
        @author = author
        @@all << self
    end
    def self.all
        @@all
    end
    def author_name
        name = self.author.name
        if name == "unknown author"
            return nil
        end
        name
    end
end

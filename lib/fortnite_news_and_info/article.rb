class Article
    attr_accessor :name, :body, :subject, :image
    extend Concerns::Findable
    @@all = []
    def initialize(name, body, subject, image)
        @name = name
        @body = body
        @subject = subject
        @image = image
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def find_by_name(name)
        self.all.detect {|a| a.name == name}
    end

end
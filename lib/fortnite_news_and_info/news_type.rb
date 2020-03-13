class NewsType
    attr_accessor :name, :articles
    extend Concerns::Findable
    @@all = []

    def initialize(name)
        @name = name 
        @articles = []
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end


end


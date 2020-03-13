class Article
    attr_accessor :name, :article, :subject, :details
    extend Concerns::Findable
    @@all
    def initialize(name, body, subject, details)
        @name = name
        @body = body
        @subject = subject
        @details = details
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end
class GamerType
    attr_accessor :name, :gamers
    extend FortniteNewsAndInfo::ClassMethods, FortniteNewsAndInfo::Findable
    @@all = []
    def initialize(controler)
        @name = controler
        @gamers = []
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end


end
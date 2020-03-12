class Gamer
    attr_accessor :name, :stats, :gamertype
    extend FortniteNewsAndInfo::ClassMethods, FortniteNewsAndInfo::Findable
    @@all = []

    def initialize(gamer, stats, gamertype)
        @name = gamer
        @stats = stats
        @gamertype = gamertype 
        save
    end 

    def save
        @@all << self
    end

    def self.all
        @@all
    end
    #creates a gamer from a mixed array of gamer tag and stats and the gmer type
    def self.create_gamer(gamertype, mixed_array)
        mixed_array.each do |g|
            self.new(g[":name"], g[":stats"], gamertype)
        end
    end


end
class Gamer
    attr_accessor :name, :stats, :gamertype
    extend Concerns::Findable
    #include Concerns::InstanceMethods
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
        new_g = nil
        mixed_array.each do |g|
            new_g = self.new(g[":name"], g[":stats"], gamertype)
            gamertype.gamers << { "name" => new_g.name, "score" => new_g.stats[":score"]}
        end
    end

    def getting_scores(gamer_type)
        scores = []
        self.all.each do |gamer|
            scores << gamer.stats["score"]
        end
        scores.sort!
        binding.pry
    end

    def find_by_score(score)
        binding.pry
        #self.all.detect {|a| a.name == name}
    end


end
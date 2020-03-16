class GamerType
    attr_accessor :name, :gamers, :sorted_scores_list, :top_gamers_list
    extend Concerns::Findable
    @@all = []
    def initialize(controler)
        @name = controler
        @gamers = []
        @sorted_scores_list = []
        @top_gamers_list = []
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def gamers_scores
        self.gamers.each do |g|
            @sorted_scores_list << g["score"]  
            #binding.pry  
        end
        @sorted_scores_list.compact!
        @sorted_scores_list.sort!
    end

    def top_gamers
        i = 2
        until i == 5 || i == self.sorted_scores_list.length do
            @top_gamers_list << Gamer.all.detect {|g| g.stats[":score"] == self.sorted_scores_list[-i] }
            i += 1
        end
    end

    
end
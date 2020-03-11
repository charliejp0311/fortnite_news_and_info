class FortniteNewsAndInfo::Fortnite 
    attr_accessor :brNews, :statsV2, :battle_royale_news, :creative_news, :save_the_world_news
    def initialize
        newAPIconection = FortniteNewsAndInfo::API.new
        @brNews = newAPIconection.getBRnews
        @statsV2 = newAPIconection.get_statsV2
        @battle_royale_news = []
        @creative_news = []
        @save_the_world_news = []
        parse_battle_royale_news
        parse_creative_news
        #parse_save_the_world_news
    end

    def parse_battle_royale_news
        self.brNews["battleroyalenews"]["news"]["motds"].collect do |article|
            @battle_royale_news << {:title => article["title"],:body => article["body"]}
        end 
    end

    def parse_creative_news
        self.brNews["creativenews"]["news"]["motds"].collect do |article|
            @creative_news << {:title => article["title"],:body => article["body"]}
        end 
    end

    def parse_save_the_world_news
        self.brNews["savetheworldnews"]["news"]["motds"].collect do |article|
            @save_the_world_news << {:title => article["title"],:body => article["body"]}
        end 
    end

end
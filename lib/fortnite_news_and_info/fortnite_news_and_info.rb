class FortniteNewsAndInfo::Fortnite 
    attr_accessor :brNews, :statsV2, :battle_royale_news, :creative_news, :save_the_world_news, :lifetime_keyboard, :lifetime_gamepad, :lifetime_touch, :lifetime_all
    def initialize
        newAPIconection = FortniteNewsAndInfo::API.new
        @brNews = newAPIconection.getBRnews
        @statsV2 = newAPIconection.get_statsV2
        @battle_royale_news = []
        @creative_news = []
        @save_the_world_news = []
        @lifetime_keyboard = [] 
        @lifetime_gamepad = [] 
        @lifetime_touch = [] 
        @lifetime_all = []
        parse_battle_royale_news
        parse_creative_news
        parse_save_the_world_news
        parse_lifetime_keyboard
        parse_lifetime_gamepad
        parse_lifetime_touch
        parse_lifetime_all
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
        self.brNews["savetheworldnews"]["news"]["messages"].collect do |article|
            @save_the_world_news << {:title => article["title"],:body => article["body"]}
        end 
    end

    def parse_lifetime_keyboard
        self.statsV2["lifetime"]["keyboardmouse"].each do |gamer|
            @lifetime_keyboard << {":gamertag" => gamer[0], ":kills" => gamer[1]["kills"]}
        end
    end
    
    def parse_lifetime_gamepad
        self.statsV2["lifetime"]["gamepad"].each do |gamer|
            @lifetime_gamepad << {":gamertag" => gamer[0], ":kills" => gamer[1]["kills"]}
        end
    end
    
    def parse_lifetime_touch
        self.statsV2["lifetime"]["touch"].each do |gamer|
            @lifetime_touch << {":gamertag" => gamer[0], ":kills" => gamer[1]["kills"]}
        end
    end

    def parse_lifetime_all
        self.statsV2["lifetime"]["all"].each do |gamer|
            @lifetime_all << {":gamertag" => gamer[0], ":kills" => gamer[1]["kills"]}
        end
    end

end
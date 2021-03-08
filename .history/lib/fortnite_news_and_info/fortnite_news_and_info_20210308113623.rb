class FortniteNewsAndInfo::Fortnite 
    attr_accessor :brNews, :statsV2, :battle_royale_news, :creative_news, :save_the_world_news, :lifetime_keyboard, :lifetime_gamepad, :lifetime_touch, :lifetime_all
    require 'pry'
    def initialize
        
        ####
        #is there a better place to do this????
        ####
        newAPIconection = FortniteNewsAndInfo::API.new
        @brNews = newAPIconection.getBRnews
        @statsV2 = newAPIconection.get_statsV2
        
        ####
        # new code to work with objects rather than stored variables
        ####
        gtypes                      
        fortniteGamers              
        news_type
        add_articles
        #binding.pry
    end
    
    #get subjects
    def news_type
        self.brNews.each do |name, data|
            # binding.pry
            if name == "battleroyalenews" || name == "creativenews" || name == "savetheworldnews" 
                NewsType.new(name)
            end
        end

    end

    ##add articles
    def add_articles
        NewsType.all.each do |s|
            binding.pry 
            if s.name == "savetheworldnews" || s.name == "battleroyalenews"
                binding.pry 
                self.brNews["#{s.name}"]["news"]["messages"].each do |a_data|
                    na = Article.new(a_data["title"], a_data["body"], s, a_data["image"])
                    s.articles << na
                end
            else
                self.brNews["#{s.name}"]["news"]["motds"].each do |a_data|
                    na = Article.new(a_data["title"], a_data["body"], s, a_data["image"])
                    s.articles << na
                end
            end
        end
    end

    #gets gamer types adds to array of gamertypes and creates gamertype objects
    def gtypes
        self.statsV2["lifetime"].each do |gt, gs|
            GamerType.find_or_create_by_name(gt)
        end
    end

    #go through each gamertype and get its list of gamers then create each gamer.
    def fortniteGamers
        #taking gamertype and linking a gamer to it
        GamerType.all.each do |gt| 
            mxd_ary = []
            self.statsV2["lifetime"]["#{gt.name}"].each do |gamer|
                stats = {}
                gamer[1].each do |k,v|
                    stats[":#{k}"] = v 
                end
                mxd_ary << {":name" => gamer[0], ":stats" => stats }
            end
            Gamer.create_gamer(gt, mxd_ary)
            gt.gamers_scores
            gt.top_gamers
        end

    end

    

end
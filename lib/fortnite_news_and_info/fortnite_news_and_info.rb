class FortniteNewsAndInfo::Fortnite 
    attr_accessor :brNews, :statsV2, :battle_royale_news, :creative_news, :save_the_world_news, :lifetime_keyboard, :lifetime_gamepad, :lifetime_touch, :lifetime_all
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
        gtypes                      ## genrerates gmae types and the masster list of game types
        fortniteGamers              ## generates all gamers
        #binding.pry
        
        #####################################
        #previous storage hope to delete varriables and method calls due to using objects instead
        #####################################
        @battle_royale_news = []            #
        @creative_news = []                 #
        @save_the_world_news = []           #
        @lifetime_keyboard = []             #
        @lifetime_gamepad = []              #
        @lifetime_touch = []                #
        @lifetime_all = []                  #
        parse_battle_royale_news            #
        parse_creative_news                 #
        parse_save_the_world_news           #
        parse_lifetime_keyboard             #
        parse_lifetime_gamepad              #
        parse_lifetime_touch                #
        parse_lifetime_all                  #
        #####################################

    end

    def parse_battle_royale_news
        parse_news("battleroyalenews", "motds", @battle_royale_news)
    end

    def parse_creative_news
        parse_news("creativenews", "motds", @creative_news)
    end

    def parse_save_the_world_news
        parse_news("savetheworldnews", "messages", @save_the_world_news)
    end

    def parse_lifetime_keyboard
        parse_stats("keyboardmouse", @lifetime_keyboard)
    end
    
    def parse_lifetime_gamepad
        parse_stats("gamepad", @lifetime_gamepad)
    end
    
    def parse_lifetime_touch
        parse_stats("touch", @lifetime_touch)
    end

    def parse_lifetime_all
        parse_stats("all", @lifetime_all)
    end

    def parse_news(catagory, article_type, array_to_use) 
        self.brNews[catagory]["news"][article_type].collect do |article|
            array_to_use << {:title => article["title"],:body => article["body"]}
        end
    end

    def parse_stats(section, array_using)
        self.statsV2["lifetime"][section].each do |gamer|
            stats = {}
            gamer[1].each do |k,v|
                stats[":#{k}"] = v 
            end
            array_using << {":name" => gamer[0], ":stats" => stats }

        end
    end

    ########
    #Code for converting this to objects instead of variables
    ########

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
        end

    end

    

end
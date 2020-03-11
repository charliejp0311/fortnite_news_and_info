class FortniteNewsAndInfo::Fortnite 
    attr_accessor :brNews, :pveNews, :brEventFlags, :brStore, :statsV2
    def initialize
        newAPIconection = FortniteNewsAndInfo::API.new
        @brNews = newAPIconection.getBRnews
        @pveNews = newAPIconection.getPVEnews
        @brEventFlags = newAPIconection.getBReventflags
        @brStore = newAPIconection.getBRstore
        @statsV2 = newAPIconection.get_statsV2
    end

   




end
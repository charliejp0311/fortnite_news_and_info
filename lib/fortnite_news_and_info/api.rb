class FortniteNewsAndInfo::API
    #require 'pry'
    def getBRnews
        url = "https://fortnite-api.p.rapidapi.com/brnews/en"
        headers = {"x-rapidapi-host": "fortnite-api.p.rapidapi.com", "x-rapidapi-key": "b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e"}
        response = HTTParty.get(url, :headers => headers)
        #binding.pry
    end

    def getPVEnews
        url = "https://fortnite-api.p.rapidapi.com/pveinfo"

        headers = {"x-rapidapi-host": "fortnite-api.p.rapidapi.com", "x-rapidapi-key": "b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e"}
        response = HTTParty.get(url, :headers => headers)
        #binding.pry
    end

    def getBReventflags
        url = "https://fortnite-api.p.rapidapi.com/breventflags"

        headers = {"x-rapidapi-host": "fortnite-api.p.rapidapi.com", "x-rapidapi-key": "b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e"}
        response = HTTParty.get(url, :headers => headers)
        #binding.pry
    end

    def getBRstore
        url = "https://fortnite-api.p.rapidapi.com/brstore"

        headers = {"x-rapidapi-host": "fortnite-api.p.rapidapi.com", "x-rapidapi-key": "b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e"}
        response = HTTParty.get(url, :headers => headers)
        #binding.pry
    end

    def get_statsV2
        url = "https://fortnite-api.p.rapidapi.com/stats/ninja"

        headers = {"x-rapidapi-host": "fortnite-api.p.rapidapi.com", "x-rapidapi-key": "b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e"}
        response = HTTParty.get(url, :headers => headers)
        #binding.pry
    end

end
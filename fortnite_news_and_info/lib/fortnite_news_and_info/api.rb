class FortniteNewsAndInfo::API
    require 'uri'
    require 'net/http'
    require 'openssl'
    
    def getBRnews
        url = URI("https://fortnite-api.p.rapidapi.com/brnews/en")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'fortnite-api.p.rapidapi.com'
        request["x-rapidapi-key"] = 'b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e'

        response = http.request(request)
        #binding.pry
    end

    def getPVEnews
        url = URI("https://fortnite-api.p.rapidapi.com/pveinfo")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'fortnite-api.p.rapidapi.com'
        request["x-rapidapi-key"] = 'b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e'

        response = http.request(request)
        #binding.pry
    end

    def getBReventflags
        url = URI("https://fortnite-api.p.rapidapi.com/breventflags")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'fortnite-api.p.rapidapi.com'
        request["x-rapidapi-key"] = 'b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e'

        response = http.request(request)
        #binding.pry
    end

    def getBRstore
        url = URI("https://fortnite-api.p.rapidapi.com/brstore")

    h   ttp = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'fortnite-api.p.rapidapi.com'
        request["x-rapidapi-key"] = 'b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e'

        response = http.request(request)
        #binding.pry
    end

    def get_statsV2
        url = URI("https://fortnite-api.p.rapidapi.com/stats/ninja")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'fortnite-api.p.rapidapi.com'
        request["x-rapidapi-key"] = 'b181d14768msh525c3e686c6ab44p1d1b58jsnc5a6a405253e'

        response = http.request(request)
        #binding.pry
    end

end
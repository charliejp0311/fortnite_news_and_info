class FortniteNewsAndInfo::CLI
    
    def call
        puts "Hello and welcome to Fortnite News and Info!"
        # puts "What kind of info are you looking for?"
        # puts "1. BR news"
        # puts "2. PVE news"
        # puts "exit"
        fn = FortniteNewsAndInfo::Fortnite.new 
        #input = gets
        news = []
        news = fn.brNews
        binding.pry
        
    end
end
class FortniteNewsAndInfo::CLI
    
    def call
        fn = FortniteNewsAndInfo::Fortnite.new
        puts "Hello and welcome to Fortnite News and Info!"
        puts "What kind of info are you looking for?"
        puts "1. Battle Royale News"
        puts "2. Save the world News"
        puts "3. Creative news"
        puts "4. Exit" 
        input = gets
        until input == 4 do
            case input
                binding.pry
            when "1"
                fn.battle_royale_news.each do |art|
                    puts "~~~~~~~~~~"
                    puts art[:title]
                    puts "..."
                    puts art[:body]
                end
                puts "~~~~~~~~~~"
            when "2"
                fn.save_the_world_news.each do |art|
                    puts "~~~~~~~~~~"
                    puts art[:title]
                    puts "..."
                    puts art[:body]
                end
                puts "~~~~~~~~~~"
            when "3"
                fn.creative_news.each do |art|
                    puts "~~~~~~~~~~"
                    puts art[:title]
                    puts "..."
                    puts art[:body]
                end
                puts "~~~~~~~~~~"
            end
        end

        
        #binding.pry
        
    end
end
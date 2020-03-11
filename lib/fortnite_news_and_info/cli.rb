class FortniteNewsAndInfo::CLI
    
    def call
        fn = FortniteNewsAndInfo::Fortnite.new
        puts "Hello and welcome to Fortnite News and Info!"
        
        input = 0
        until input == "4" do
            input == 0 ? (puts "What are you looking for? Please pick a number.") : (puts "Can I help you with something else? Please pick a number.") 
            puts "1. Battle Royale News"
            puts "2. Save the world News"
            puts "3. Creative news"
            puts "4. Exit"
            input = gets.chomp
            system "clear"
            case input
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
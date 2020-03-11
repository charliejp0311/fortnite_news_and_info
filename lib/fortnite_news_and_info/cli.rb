class FortniteNewsAndInfo::CLI
    
    def call
        fn = FortniteNewsAndInfo::Fortnite.new
        puts "Hello and welcome to Fortnite News and Info!"
        
        input = 0
        until input == "8" do
            input == 0 ? (puts "What are you looking for? Please pick a number.") : (puts "Can I help you with something else? Please pick a number.") 
            puts "1. Battle Royale News"
            puts "2. Save the world News"
            puts "3. Creative news"
            puts "4. Top ten lifetime Keyboard and mouse users"
            puts "5. Top ten lifetime gamepad users"
            puts "6. Top ten lifetime touch device users"
            puts "7. Top ten lifetime users"
            puts "8. Exit"
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
            when "4"
                i = 0
                until i == 10 || i == (fn.lifetime_keyboard.length - 1) do
                    puts "#{i + 1}. #{fn.lifetime_keyboard[i][":gamertag"]} with #{fn.lifetime_keyboard[i][":kills"]} kills!"
                    i += 1
                end
                puts "~~~~~~~~~~"
            when "5"
                i = 0
                until i == 10 || i == (fn.lifetime_gamepad.length - 1) do
                    puts "#{i + 1}. #{fn.lifetime_gamepad[i][":gamertag"]} with #{fn.lifetime_keyboard[i][":kills"]} kills!"
                    i += 1
                end
                puts "~~~~~~~~~~"
            when "6"
                i = 0
                until i == 10 || i == (fn.lifetime_touch.length - 1) do
                    puts "#{i + 1}. #{fn.lifetime_touch[i][":gamertag"]} with #{fn.lifetime_keyboard[i][":kills"]} kills!"
                    i += 1
                end
                puts "~~~~~~~~~~"
            when "7"
                i = 0
                until i == 10 || i == (fn.lifetime_all.length - 1) do
                    puts "#{i + 1}. #{fn.lifetime_all[i][":gamertag"]} with #{fn.lifetime_keyboard[i][":kills"]} kills!"
                    i += 1
                end
                puts "~~~~~~~~~~"
            end

        end

        
        #binding.pry
        
    end
end
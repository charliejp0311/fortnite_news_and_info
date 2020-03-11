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
            puts "4. Top lifetime Keyboard and mouse users"
            puts "5. Top lifetime gamepad users"
            puts "6. Top lifetime touch device users"
            puts "7. Top lifetime users"
            puts "8. Exit"
            input = gets.chomp
            system "clear"
            case input
            when "1"
                print_article(fn.battle_royale_news)
            when "2"
                print_article(fn.save_the_world_news)
            when "3"
                print_article(fn.creative_news)
            when "4"
                print_top_users(fn.lifetime_keyboard)
            when "5"
                print_top_users(fn.lifetime_gamepad)
            when "6"
                print_top_users(fn.lifetime_touch)
            when "7"
                print_top_users(fn.lifetime_all)
            end

        end
  
    end

    def print_article(array_of_hashes)
        array_of_hashes.each do |art|
            puts "~~~~~~~~~~"
            puts art[:title]
            puts "..."
            puts art[:body]
        end
        puts "~~~~~~~~~~"
    end

    def print_top_users(mixed_array)
        i = 0
        until i == 3 || i == (mixed_array.length - 1) do
            puts "#{i + 1}. #{mixed_array[i][":gamertag"]} with:"
            mixed_array[i][":stats"].each do |k,v|
                puts "  #{k} =  #{v}"
            end
            i += 1
        end
        puts "~~~~~~~~~~"
    end

end
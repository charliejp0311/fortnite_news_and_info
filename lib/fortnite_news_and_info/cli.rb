class FortniteNewsAndInfo::CLI
    
    def call
        fn = FortniteNewsAndInfo::Fortnite.new
        puts "Hello and welcome to Fortnite News and Info!"
        
        input = 0
        until input == "3" do
            input == 0 ? (puts "What are you looking for? Please pick a number.") : (puts "Can I help you with something else? Please pick a number.") 
            puts "1. Fortnite News"
            puts "2. Lifetime Leaders"
            puts "3. Exit"
            input = gets.chomp
            system "clear"
            #binding.pry
            case input
            when "1"
                system "clear"
                puts "Great choice!"
                puts "What news subject would you like to check out?"
                fortnite_news 
            when "2"
                system "clear"
                puts "Great choice!"
                puts "What news type of player would you like to check out?"
                lifetime_stats
            end

        end
  
    end
    #new menu with news options
    def fortnite_news
        news_selection = 0
        until news_selection == "#{NewsType.all.length + 1}" do
            list = []
            i = 1
            NewsType.all.each do |subj|
                list << subj.name
                puts "#{i}. #{subj.name}"
                i += 1
            end
            puts "#{NewsType.all.length + 1}. Main menu"
            news_selection = gets.chomp
            case news_selection
            when "1"
                system "clear"
                NewsType.find_by_name(list[0]).articles.each do |article|
                    print_article(article)
                end
            when "2"
                system "clear"
                NewsType.find_by_name(list[1]).articles.each do |article|
                    print_article(article)
                end
            when "3"
                system "clear"
                NewsType.find_by_name(list[2]).articles.each do |article|
                    print_article(article)
                end
            end
        end
    end
    #new menu with lifetime stats
    def lifetime_stats
        selection = 0
        until selection == "#{GamerType.all.length + 1}" do
            i = 1
            GamerType.all.each do |gt|
                puts "#{i}. #{gt.name}"
                i += 1
            end
            puts "#{GamerType.all.length + 1}. Main Menu"
            selection = gets.chomp
            case selection
            when "1"
                system "clear"
                GamerType.all[selection.to_i - 1].top_gamers_list.each do |g|
                    print_gamer(g)
                end
            when "2"
                system "clear"
                GamerType.all[selection.to_i - 1].top_gamers_list.each do |g|
                    print_gamer(g)
                end
            when "3"
                system "clear"
                GamerType.all[selection.to_i - 1].top_gamers_list.each do |g|
                    print_gamer(g)
                end
            when "4"
                system "clear"
                GamerType.all[selection.to_i - 1].top_gamers_list.each do |g|
                    print_gamer(g)
                end
            end

        end


    end

    def print_article(a)
        #binding.pry
        puts "~~~~~~~~~~~~~~~~~~~~~"
        puts a.name
        puts "~"
        puts "  #{a.body}"
        puts "~"
        puts a.image
        puts ""
    end

    ###new print method for single user
    def print_gamer(gamer)
        puts "#{gamer.name} has a score of #{gamer.stats[":score"]}!"
    end

end
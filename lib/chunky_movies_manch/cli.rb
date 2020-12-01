class CLI

    def showings
        xyz = Scraper.new
        # put a loop in here somewhere to be able to look at multiple movies if the user wants
        # runs scraper to get movies, stores as local variable (array of hashes)
        # user enters the number of the movie they would like to see
        input = "list"
        until input.downcase == "exit"
            if input.to_i > 0 && input.to_i <= xyz.today.length
                puts "#{xyz.today[input.to_i-1][:synopsis]}"
            elsif input == "list"
                puts "Today's showings are:"
                puts "1. #{xyz.today[0][:name]} Rated: #{xyz.today[0][:rating]} Showtimes: #{xyz.today[0][:showtimes]}"
                puts "2. #{xyz.today[1][:name]} Rated: #{xyz.today[1][:rating]} Showtimes: #{xyz.today[1][:showtimes]}"
                puts "What movie would you like to read the synopsis of?"
                puts "Choose a number above, list to see the options again, or type exit to leave."
            else    
                puts "I'm not sure what you would like. Type the number of a movie, list to see the options again, or exit to leave the program."
            end
        input = gets.strip
        end
        puts "Enjoy your night at the movies!"
    end

end
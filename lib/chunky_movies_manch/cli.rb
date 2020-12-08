class CLI

    def showings
        manchester = Scraper.new.today("manchester")
        nashua = Scraper.new.today("nashua")
        pelham = Scraper.new.today("pelham")
        current_location = ""
        input = "locations"
        until input.downcase == "exit"
            loc_input = true
            if input.to_i > 0 && input.to_i <= current_location.length
                puts "#{current_location[input.to_i-1][:synopsis]}"
            elsif input == "locations"
                @location = location
                input = "list"
                case @location
                when "Manchester"
                    current_location = manchester
                when "Nashua"
                    current_location = nashua
                when "Pelham"
                    current_location = pelham
                when "Exit"
                    input = "exit"
                end
                loc_input = false
            elsif input == "list"
                puts "Today's showings for the #{@location} location are:"
                i = 0
                current_location.length.times do
                    puts "#{i+1}. #{current_location[i][:title]}, #{current_location[i][:rating]}, Showtimes: #{current_location[i][:showtimes]}"
                    i+=1
                end
                # fix showtime button text
                puts "What movie would you like to read the synopsis of?"
                puts "Choose a number above, list to see the options again, locations to choose a new location, or exit to leave."
            else    
                puts "I'm not sure what you would like. Type the number of a movie, list to see the options again, or exit to leave the program."
            end
            if loc_input == true
                input = gets.strip
            end
        end
        puts "Enjoy your night at the movies!"
    end

    def location
        puts "What Chunky's location are you going to? (Manchester, Nashua, Pelham)"
        theatre = gets.strip.capitalize
        case theatre
        when "Nashua"
            return theatre
        when "Pelham"
            return theatre
        when "Manchester"
            return theatre
        when "Exit"
            return theatre
        else
            puts "Enter a valid location."
            location
        end
    end

end
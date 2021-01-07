class CLI

    def showings
        @current_location = ""
        input = "locations"
        until input.downcase == "exit"
            loc_input = true
            if input.to_i > 0 && input.to_i <= @current_location.films.length
                puts "#{@current_location.films[input.to_i-1].synopsis}"
            elsif input == "locations"
                @location = location_valid
                input = "list"
                set_current_location
                binding.pry
                loc_input = false
            elsif input == "list"
                list_showings
            else    
                puts "I'm not sure what you would like. Type the number of a movie, list to see the options again, or exit to leave the program."
            end
            if loc_input == true
                input = gets.strip
            end
        end
        puts "Enjoy your night at the movies!"
    end

    def location_valid
        puts "What Chunky's location are you going to? (Manchester, Nashua, Pelham)"
        theatre = gets.strip.capitalize
        valid = ["Manchester", "Nashua", "Pelham", "Exit"]
        unless valid.include?(theatre)
            puts "Enter a valid location"
            location_valid
        end
        theatre
    end

    def set_current_location
        case @location
        when "Manchester"
            @current_location = MANCHESTER
            # FOR TESTING PURPOSES
        when "Nashua"
            @current_location = NASHUA
        when "Pelham"
            @current_location = PELHAM
        when "Exit"
            input = "exit"
        end
    end

    def list_showings
        puts "Today's showings for the #{@location} location are:"
        i = 0
        @current_location.films.length.times do
            puts "#{i+1}. #{@current_location.films[i].title}, #{@current_location.films[i].rating}, Showtimes: #{@current_location.films[i].showtimes}"
            i+=1
        end
        puts "What movie would you like to read the synopsis of?"
        puts "Choose a number above, list to see the options again, locations to choose a new location, or exit to leave."
    end

end
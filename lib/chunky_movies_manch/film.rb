class Film

    attr_accessor :title, :showtimes, :rating, :synopsis, :location

    def add_to_location(location)
        location.films << self
    end

end
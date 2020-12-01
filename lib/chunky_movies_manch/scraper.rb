class Scraper

    attr_accessor :name, :showings, :rating, :synopsis

    def today
        @stubbed = [{name: "movie_1", rating: "PG", showtimes: "7:30", synopsis: "This is a family movie"}, {name: "movie_2", rating: "R", showtimes: "9:00", synopsis: "For adult audiences only"}]
        return @stubbed
    end

    def scrape
        doc = Nokogiri::HTML(open("https://www.chunkys.com/theatre/manchester/now-showing/"))
        binding.pry
    end

end
class Film

    attr_accessor :title, :showtimes, :rating, :synopsis, :location

    def initialize()
        # film.rating = info.search("h5").search("div").text.strip
        # film.title = info.search("h5").search("a").children[0].text.strip
        # film.synopsis = info.search("div.row.text-left").text.gsub("... READ MORE","")
        # showtimes_ary = info.text.scan(/(\d+:\d+[ap]m)/)
        # film.showtimes = ""
        # showtimes_ary.each do |time|
        #     film.showtimes << "#{time[0]} "
        # end
        # film.location = $LOCATION
        # film.add_to_location(film.location)
        # film
        # binding.pry
    end

    def add_to_location(location)
        location.films << self
    end

end
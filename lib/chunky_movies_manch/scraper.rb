class Scraper

    attr_accessor :movie_ary, :title, :showtimes, :rating, :synopsis

    def today(site)
        doc = Nokogiri::HTML(open("https://www.chunkys.com/theatre/#{site}/now-showing/"))
        # file = File.read('/mnt/c/users/marcs/dev/flatiron/chunky_movies_manch/Manchester - Chunkys Cinema Pub Dec 27 2020.html')
        # doc = Nokogiri::HTML(file)

        movie_cards = doc.search("div.col-xs-12.film-row")
        movie_info = movie_cards.search("header.entry-header")
            movie_info.map do |info|
                film = Film.new
                film.rating = info.search("h5").search("div").text.strip
                film.title = info.search("h5").search("a").children[0].text.strip
                film.synopsis = info.search("div.row.text-left").text.gsub("... READ MORE","")
                showtimes_ary = info.text.scan(/(\d+:\d+[ap]m)/)
                film.showtimes = ""
                showtimes_ary.each do |time|
                    film.showtimes << "#{time[0]} "
                end
                film.location = $LOCATION
                film.add_to_location(film.location)
                film
            end
    end

end
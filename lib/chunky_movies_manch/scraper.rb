class Scraper

    attr_accessor :movie_ary, :title, :showtimes, :rating, :synopsis

    def today(site)
        doc = Nokogiri::HTML(open("https://www.chunkys.com/theatre/#{site}/now-showing/"))
        movie_cards = doc.search("div.col-xs-12.film-row")
        movie_info = movie_cards.search("header.entry-header")
        @movie_ary = []
            movie_info.each do |info|
                film = {}
                film[:rating] = info.search("h5").search("div").text.strip
                film[:title] = info.search("h5").search("a").children[0].text.strip
                film[:synopsis] = info.search("div.row.text-left").text.gsub("... READ MORE","")
                showtimes_ary = info.text.scan(/(\d+:\d+[ap]m)/)
                film[:showtimes] = ""
                showtimes_ary.each do |time|
                    film[:showtimes] << "#{time[0]} "
                    # binding.pry
                end
                # binding.pry
                @movie_ary << film
            end
        return @movie_ary
    end

end
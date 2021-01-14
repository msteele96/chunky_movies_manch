class Location

    attr_reader :films, :site

    @@locations = []

    def initialize(site)
        @site = site
        @films = []
        @@locations << self
    end

    def scrape
        Scraper.new.today(site, self)
        self
    end

end
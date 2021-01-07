class Location

    attr_accessor :site, :films

    @@locations = []

    def initialize(site)
        # $LOCATION = ""
        @site = site
        @films = []
        @@locations << self
        $LOCATION = self

    end

    def scrape
        Scraper.new.today(site)
        self
    end

end
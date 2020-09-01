class Cult
    
    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        self.class.all << self
    end

    def self.all
        @@all
    end

    def bloodoaths
        BloodOath.all.select {|bloodoath| bloodoath.cult == self}
    end

    def followers
        self.bloodoaths.map {|bloodoath| bloodoath.follower}
    end

    def recruit_follower(follower)
        self.followers << follower
    end

    def cult_population
        self.followers.count
    end

    def self.find_by_name(name)
        self.all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.select {|cult| cult.founding_year == year}
    end
    
end
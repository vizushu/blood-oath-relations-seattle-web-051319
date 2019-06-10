class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end
    
    def self.all
        @@all
    end

    def recruit_follower(follower)
    end

    def cult_population
#returns a `Fixnum` that is the number of followers in this cult
    
    end

    def self.find_by_name(name)
 #takes a `String` argument that is a name and returns a `Cult` instance whose name matches       
    self.all.select{|cult| cult.name == name}
    end

    def self.find_by_location(loc)
#takes a `String` argument that is a location and returns an `Array` of cults that are in that location
    cults = self.all.select{|cult| cult.location == loc}    
    cults.map {|cult| cult.name}
    end

    def self.find_by_founding_year(year)
#turns all of the cults founded in that year
        self.all.select {|cult| cult.founding_year == year}
            # self.all.select do |cult| 
            #     cult.founding_year == year
            # end
    end



    
end

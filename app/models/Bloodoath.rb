class Bloodoath
    attr_accessor :initiation_date, :follower, :cult

    @@all = []

    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
       @@all << self
    end
    
    def self.all
        @@all
    end

end
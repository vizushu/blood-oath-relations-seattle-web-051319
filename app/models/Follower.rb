class Follower
    attr_accessor :name, :age, :life_motto, :cults

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
#takes a `Fixnum` argument that is an age and returns an `Array` of followers who are the given age or older
    people = self.all.select {|follower| follower.age >= age} 
    people.map{|follower| follower.name}   
    end

    def join_cult(cult)
# takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
    Bloodoath.new(self, cult)
    end


end

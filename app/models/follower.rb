class Follower
    
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        self.class.all << self
    end

    def self.all
        @@all
    end

    def bloodoaths
        BloodOath.all.select {|bloodoath| bloodoath.follower == self}
    end
    
    def cults
        self.bloodoaths.map {|bloodoath| bloodoath.cult}
    end

    def join_cult(cult)
        cult.followers << self
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower| follower.age >= age}
    end


    
end
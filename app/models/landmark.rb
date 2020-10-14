# put your Landmark model here
class Landmark
    @@all = []
    attr_reader :name, :city

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_city(city)
        self.all.select do |lm|
            lm.city == city
        end
    end

    def trips
        Trip.all.select { |trip| trip.landmark == self }
    end

    def tourists
        self.trips.map { |trip| trip.tourist }
    end
end
# put your Tourist model here
class Tourist
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def visited
        Trip.all.select { |trip| trip.tourist == self }
    end

    def never_visited
        Landmark.all.select do |lm|
            !visited.include?(lm)
        end
    end
end
require_relative '../config/environment.rb'

# create your variables and/or write any tests here
jake = Tourist.new("Jake")
poseidon = Landmark.new("Poseidon", "VB")
lighthouse = Landmark.new("Lighthouse", "VB")
trip = Trip.new(jake, poseidon)
arr = poseidon.tourists

binding.pry

0
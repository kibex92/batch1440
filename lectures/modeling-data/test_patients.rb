
require_relative 'patient'
require_relative 'room'

lucas = Patient.new(name: "Lucas", age: 35)
bruncky = Patient.new(name: "Bruncky", age: 29, cured: true)

ocean = Room.new(name: "Ocean", capacity: 2)

puts "#{ocean.name} room is full? #{ocean.full?}"
ocean.add_patient(lucas)
ocean.add_patient(bruncky)

p bruncky.room
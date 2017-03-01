require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fox.rb"


animal_one = Cat.new("Mittens")
animal_two = Dog.new("Shadow")
animal_three = Fox.new("Flash")

animals = [animal_one, animal_two, animal_three]

puts animal_one.to_s + " " + animal_two.to_s + " " + animal_three.to_s

p animals  # gives instance information

animals.each { |animal| puts animal.to_s }

# Per Max:
# used .to_s (special method name) and it prints out the "to string"
# previously used .get_info and just printed memory info instead of "to string"
print animal_one
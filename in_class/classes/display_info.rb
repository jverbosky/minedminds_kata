require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fox.rb"


animal_one = Cat.new("Mittens")
animal_two = Dog.new("Shadow")
animal_three = Fox.new("Flash")

puts animal_one.get_info + " " + animal_two.get_info + " " + animal_three.get_info
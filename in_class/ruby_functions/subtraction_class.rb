# In-class demo of subtraction function using splat
# Splat lets us do an iteration
# Josh

def my_subtraction(*numbers)
	# Placeholder for variable (initializing it - per Josh)
	# If you set it to something, might already pass the test so be careful
	# shift drops the first item in the array and moves everything down by 1
	# ["a", "b", "c"] > shift > ["b", "c"]
	# There are ways you can put the first element somewhere else
	# Use .first to grab first element before running .shift
	result = numbers.shift
	# Term - "field goal posts" around array item
	numbers.each do |num|
		result -= num
	end
	return result
end

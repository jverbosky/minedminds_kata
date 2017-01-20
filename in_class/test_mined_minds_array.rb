# In-Class Example to Reinforce Test Driven Developmet
#
# Test for code in function_mined_minds_array.rb
#
# Unit Test example
# Write code to test and make sure your code does what you say it does
#
# Include minitest gem
# http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest.html
require "minitest/autorun"

# Link test file and production file together
require_relative "function_mined_minds_array.rb"

# Class to create a new instance for test
class TestMinedMindsKata < Minitest::Test

	# Test to assert that array has 100 elements
	# .length > use with strings
	# .count > use with arrays, iterates through all items in the array to produce result
	# .size > use with arrays, doesn't iterate - most efficient
	def test_function_returns_100_object_in_an_array
		populated_array = mined_minds_array()
		assert_equal(100, populated_array.size)
	end

	# Test to assert that array contains 13
	# To use additional methods in test, assign to variables (ex: .include?)
	def test_function_array_contains_13
		populated_array = mined_minds_array()
		check_array = populated_array.include? 13
		assert_equal(true, check_array)
	end

	# # Test to assert that array contains integers
	# def test_function_array_contains_integer
	# 	populated_array = mined_minds_array()
	# 	while condition
	# 		populated_array.each do |item|
	# 			if item.class = String
	# 			end
	# 		end
	# 	end
	# end

	# Test to assert that array contains 1 at index 0
	def test_function_array_index_0_contains_1
		assert_equal(1, mined_minds_array[0])
	end

	# Test to assert that array contains "Mined" at index 8
	def test_function_array_index_8_contains_mined
		results = mined_minds_array()
		assert_equal("Mined", results[8])
	end

	# Test to assert that array contains "Minds" at index 34
	def test_function_array_index_34_contains_minds
		results = mined_minds_array()
		assert_equal("Minds", results[34])
	end

	# Test to assert that array contains "Mined Minds" at index 14
	def test_function_array_index_14_contains_mined_mineds
		results = mined_minds_array()
		assert_equal("Mined Minds", results[14])
	end

end
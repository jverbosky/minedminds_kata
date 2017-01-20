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
require_relative "function_random_pairs.rb"

# Class to create a new instance for test
class TestMinedMindsKata < Minitest::Test

	# Test to assert that array has 100 elements
	# .length > use with strings
	# .count > use with arrays, iterates through all items in the array to produce result
	# .size > use with arrays, doesn't iterate - most efficient
	def test_random_pairs_has_two_pairs
		pairs = random_pair(["josh","john"])
		assert_equal(1, pairs.count)
	end

	def test_random_pair_has_2_with_4_names
		pairs = random_pair(["josh","john","susan","bob"])
		assert_equal(2, pairs.count)
	end

	# Passes but actually false positive
	# Output of multi-dimensional array only contains 2 pairs (4 names)
	# Last name got dropped due to .each do / if loop not having an else condition
	def test_random_pair_has_2_with_5_names
		pairs = random_pair(["josh","john","susan","bob","steve"])
		assert_equal(2, pairs.count)
	end

	def test_random_pair_has_3_with_7_names
		pairs = random_pair(["josh","john","susan","bob","steve","jon","caleb"])
		assert_equal(3, pairs.count)
	end

end
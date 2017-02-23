# Test for code
#
# Unit Test example
# Write code to test and make sure your code does what you say it does

# Include minitest gem
# http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest.html
require "minitest/autorun"

# Link test file and production file together
require_relative "kata0118.rb"

# Class to create a new instance for test (?)
class TestMinedMindsKata < Minitest::Test

	# Note: method name has to begin with "test"
	def test_1_returns_1
		assert_equal(1,1)
	end

    # Basic test for method that returns 1
	def test_function_returns_1
		assert_equal(1,minedmindskata(1))
	end

	# Test for same method
	# Have method use parameter to define variable value
	def test_function_returns_2
		assert_equal(2,minedmindskata(2))
	end

	# Test paired with method 3
	def test_function_returns_mined_for_3
		assert_equal("Mined",minedmindskata(3))
	end

	def test_function_returns_mined_for_5
		assert_equal("Minds",minedmindskata(5))
	end

	def test_function_returns_mined_minds_for_15
		assert_equal("Mined Minds",minedmindskata(15))
	end

	def test_function_returns_69
		assert_equal("Mined",minedmindskata(69))
	end

	def test_function_returns_85
		assert_equal("Minds",minedmindskata(85))
	end

	def test_function_returns_75
		assert_equal("Mined Minds",minedmindskata(75))
	end

	# # Can use arrays to test ranges
	# def test_function_returns_array
	# 	assert_equal([1, 2, "Mined", 4, "Minds", "Mined", 7, 8, "Mined", "Minds", 11, "Mined", 13, 14, "Mined Minds", 16, 17, "Mined", 19, "Minds", "Mined", 22, 23, "Mined", "Minds", 26, "Mined", 28, 29, "Mined Minds", 31, 32, "Mined", 34, "Minds", "Mined", 37, 38, "Mined", "Minds", 41, "Mined", 43, 44, "Mined Minds", 46, 47, "Mined", 49, "Minds", "Mined", 52, 53, "Mined", "Minds", 56, "Mined", 58, 59, "Mined Minds", 61, 62, "Mined", 64, "Minds", "Mined", 67, 68, "Mined", "Minds", 71, "Mined", 73, 74, "Mined Minds", 76, 77, "Mined", 79, "Minds", "Mined", 82, 83, "Mined", "Minds", 86, "Mined", 88, 89, "Mined Minds", 91, 92, "Mined", 94, "Minds", "Mined", 97, 98, "Mined", "Minds"],minedmindskata())
	# end


end


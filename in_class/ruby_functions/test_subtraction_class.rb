# Test for subtraction_class.rb
# Josh

require "minitest/autorun"
require_relative "subtraction_class.rb"

class TestSubtraction < Minitest::Test

	def test_1_minus_1_equals_0
		results = my_subtraction(1, 1)
		assert_equal(0, results)
	end

	def test_7_minus_5_equals_2
		results = my_subtraction(7, 5)
		assert_equal(2, results)
	end

	def test_20_minus_8_equals_12
		results = my_subtraction(20, 8)
		assert_equal(12, results)
	end

	def test_15_minus_5_minus_6_equals_4
		results = my_subtraction(15, 5, 6)
		assert_equal(4, results)
	end

	# Create a test against anything that you might think will break it
	def test_35_minus_7_minus_5_minus_3_equals_20
		results = my_subtraction(35, 7, 5, 3)
		assert_equal(20, results)
	end

end
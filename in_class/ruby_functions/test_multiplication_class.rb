# Test for multiplication_class.rb
# Josh

require "minitest/autorun"
require_relative "multiplication_class.rb"

class TestMultiplication < Minitest::Test

	def test_1_times_2_equals_2
		results = my_multiplication(1, 2)
		assert_equal(2, results)
	end

	def test_2_times_4_equals_8
		results = my_multiplication(2, 4)
		assert_equal(8, results)
	end

	def test_0_times_4_equals_0
		results = my_multiplication(0, 4)
		assert_equal(0, results)
	end

	def test_5_times_15_equals_75
		results = my_multiplication(5, 15)
		assert_equal(75, results)
	end

end
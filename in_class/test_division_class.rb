# Test for division_class.rb
# Josh

require "minitest/autorun"
require_relative "division_class.rb"

class TestDivision < Minitest::Test

	def test_3_divided_by_3_equals_1
		results = my_division(3, 3)
		assert_equal(1, results)
	end

	def test_6_divided_by_3_equals_2
		results = my_division(6, 3)
		assert_equal(2, results)
	end

	def test_0_divided_by_2_equals_0
		results = my_division(0, 2)
		assert_equal(0, results)
	end

	def test_2_divided_by_0_fails
		results = my_division(2, 0)
		assert_equal(false, results)
	end

	def test_99_divided_by_11_equals_9
		results = my_division(99, 11)
		assert_equal(9, results)
	end

end
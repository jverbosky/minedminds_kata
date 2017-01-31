# Test for addition_class.rb
# Josh

require "minitest/autorun"
require_relative "addition_class.rb"

class TestAddition < Minitest::Test

	def test_0_add_0_equals_0
		results = my_addition(0, 0)
		assert_equal(0, results)
	end

	def test_1_add_1_equals_2
		results = my_addition(1, 1)
		assert_equal(2, results)
	end

	def test_6_add_7_equals_13
		results = my_addition(6, 7)
		assert_equal(13, results)
	end

end
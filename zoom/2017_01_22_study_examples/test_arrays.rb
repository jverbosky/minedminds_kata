require 'minitest/autorun'
require_relative '2017_01_22_study_function_arrays.rb'

class TestMinedMindsStudy < Minitest::Test

  def test_1_function_returns_array
    results = create_array()
    assert_equal(Array,results.class)
  end

  def test_2_function_returns_length
    results = create_array()
    assert_equal(100, results.length)
  end

  def test_3_function_return_2
    results = create_array()
    assert_equal(2, results[2-1]) #reminder for 0-based counting
  end

  def test_4_function_input_1_return_1
    results = create_array()
    assert_equal(1, results[1-1])
  end

  # This test stops working once we add test 7
  # def test_5_function_input_100_return_100
  #   results = create_array()
  #   assert_equal(100, results[100-1])
  # end

  def test_6_function_input_3_return_mined
    results = create_array()
    assert_equal("Mined", results[3-1])
  end

  def test_7_function_input_5_return_minds
    results = create_array()
    assert_equal("Minds", results[5-1])
  end

end
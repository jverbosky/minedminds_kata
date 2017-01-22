# Note: function incomplete, just proof of concept

require 'minitest/autorun'
require_relative '2017_01_22_study_function_random_pairs.rb'

class TestMinedMindsStudyRandomPairs < Minitest::Test

  def test_1_array_names_odd
    # array with 5 names to test odd
    students_to_pass_as_parameter = [
      "Allen Weber",
      "Brian Lewis",
      "Cummie Washington",
      "Dover Hellfeldt",
      "Edwin Wells",
      "Frank Mugo",
      "Frank Coleman"
    ]
    results = create_pairs(students_to_pass_as_parameter)
    assert_equal(4,results.size())
  end

  def test_2_array_names_even
    # array with 6 names to test even
    students_to_pass_as_parameter = students = [
      "Allen Weber",
      "Brian Lewis",
      "Cummie Washington",
      "Dover Hellfeldt",
      "Edwin Wells",
      "Frank Mugo"
    ]
    results = create_pairs(students_to_pass_as_parameter)
    assert_equal(3,results.size())
  end

end
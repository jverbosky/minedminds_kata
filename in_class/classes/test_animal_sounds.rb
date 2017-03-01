require "minitest/autorun"
require_relative "cat.rb"

class TestAnimalSounds < Minitest::Test

  def test_1_test_for_cat_name
    animal = Cat.new("Felix")
    assert_equal("Felix", animal.name)
  end

  def test_2_test_for_cat_sound
    animal = Cat.new("Midnight")
    assert_equal("meow", animal.sound)
  end

end
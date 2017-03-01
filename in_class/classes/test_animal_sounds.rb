require "minitest/autorun"
require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fox.rb"

class TestAnimalSounds < Minitest::Test

  # A class instance is only available within a method that calls it
  # At the end of the method, the class instance is destroyed
  def test_1_test_for_cat_name
    animal = Cat.new("Felix")
    assert_equal("Felix", animal.name)
  end

  def test_2_test_for_cat_sound
    animal = Cat.new("Midnight")
    assert_equal("meow", animal.sound)
  end

  def test_3_test_for_dog_name
    animal = Dog.new("Tan-chan")
    assert_equal("Tan-chan", animal.name)
  end

  def test_4_test_for_dog_sound
    animal = Dog.new("Luma")
    assert_equal("woof", animal.sound)
  end

    def test_5_test_for_fox_name
    animal = Fox.new("Red")
    assert_equal("Red", animal.name)
  end

  def test_6_test_for_fox_sound
    animal = Fox.new("Todd")
    assert_equal("konkon", animal.sound)
  end

  # Every class should have a "to_string" method (get_info)
  # Take this class and ouput a string - used to return value of variables in class
  # See example in display_info.rb
  def test_7_test_for_cat_info
    animal = Cat.new("Buttons")
    assert_equal("Buttons says meow.", animal.get_info())
  end

  def test_8_test_for_dog_info
    animal = Dog.new("Dog")
    assert_equal("Dog says woof.", animal.get_info())
  end

  def test_9_test_for_fox_info
    animal = Fox.new("Arctic")
    assert_equal("Arctic says konkon.", animal.get_info())
  end

end
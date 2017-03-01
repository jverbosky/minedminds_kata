require "minitest/autorun"
require_relative "cat.rb"
require_relative "dog.rb"
require_relative "fox.rb"

class TestAnimalSounds < Minitest::Test

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

end
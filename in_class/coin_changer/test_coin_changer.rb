require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

  def test_1_pass_zero_coins_returns_empty_hash
    result = get_change(0)
    assert_equal({}, result)
  end

  def test_2_pass_one_cent_returns_hash_with_one_penny
    result = get_change(1)
    assert_equal({penny: 1}, result)
  end

  def test_3_pass_two_cents_returns_hash_with_two_pennies
    result = get_change(2)
    assert_equal({penny: 2}, result)
  end

  def test_4_pass_five_cents_returns_hash_with_one_nickel
    result = get_change(5)
    assert_equal({nickel: 1}, result)
  end

  def test_5_pass_six_cents_returns_hash_with_one_nickel_and_one_penny
    result = get_change(6)
    assert_equal({nickel: 1, penny: 1}, result)
  end

  def test_5_pass_seven_cents_returns_hash_with_one_nickel_and_one_penny
    result = get_change(7)
    assert_equal({nickel: 1, penny: 2}, result)
  end

  # def test_6_
  #   result = 
  #   assert_equal(  ,  )
  # end

  # def test_7_
  #   result = 
  #   assert_equal(  ,  )
  # end



end
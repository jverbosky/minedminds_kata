def get_change(amount)
  change = {}
  if amount >= 25
    number_coins = amount / 25
    change[:quarter] = number_coins
    amount -= 25 * number_coins
  end
  if amount >= 10
    number_coins = amount / 10
    change[:dime] = number_coins
    amount -= 10 * number_coins
  end
  if amount >= 5
    change[:nickel] = 1
    amount -= 5
  end
  if amount >= 1
    change[:penny] = amount
  end
  change
end
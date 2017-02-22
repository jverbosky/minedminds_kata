def get_change(amount)
  change = {}
  quarter = 25
  dime = 10
  nickel = 5
  penny = 1
  if amount >= quarter
    number_coins = amount / quarter
    change[:quarter] = number_coins
    amount -= quarter * number_coins
  end
  if amount >= dime
    number_coins = amount / dime
    change[:dime] = number_coins
    amount -= dime * number_coins
  end
  if amount >= nickel
    change[:nickel] = 1
    amount -= nickel
  end
  if amount >= 1
    change[:penny] = amount
  end
  change
end
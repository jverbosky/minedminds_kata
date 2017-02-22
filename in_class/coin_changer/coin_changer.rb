def get_change(amount)
  change = {}
  coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}
  if amount >= coins[:quarter]
    number_coins = amount / coins[:quarter]
    change[:quarter] = number_coins
    amount -= coins[:quarter] * number_coins
  end
  if amount >= coins[:dime]
    number_coins = amount / coins[:dime]
    change[:dime] = number_coins
    amount -= coins[:dime] * number_coins
  end
  if amount >= coins[:nickel]
    change[:nickel] = 1
    amount -= coins[:nickel]
  end
  if amount >= 1
    change[:penny] = amount
  end
  change
end
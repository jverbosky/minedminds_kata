def get_change(amount)
  change = {}
  coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}

  coins.each do |coin, value|
    if amount >= value
      number_coins = amount / value
      change[coin] = number_coins
      amount -= value * number_coins
    end
  end

  change
end
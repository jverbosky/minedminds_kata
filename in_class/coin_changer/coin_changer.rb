def get_change(amount)
  change = {}
  if amount > 5
    change[:nickel] = 1
    change[:penny] = amount - 5
  elsif amount == 5
    change[:nickel] = 1
    {penny: amount}
  elsif amount > 0
    change[:penny] = amount
  end
  change
end
def create_array()
  test_array = []
  # define variable outside of the loop
  # so that it's available in the loop
  # if it's defined in the loop, you can't
  # access it outside of the loop (scoping issue)
  num = 1

  100.times do
    if num % 3 == 0
      test_array << "Mined"
    elsif num % 5 == 0
      test_array << "Minds"
    else
      test_array << num
    end

    # Most common mistake is to put the increment
    # inside the else statement
    num += 1

  end

  return test_array

end

print create_array()
# Explanatory program to help clarify array contents and values
# during <.each do> loop of Josh's Random Pairs program

=begin
#In-class example of random pairs (Josh)

test_array = ["Abe","Bob","Carl","Dave","Ed"]

def random_pair(names)
  my_array = []

  array_of_items_to_be_paired = names.shuffle.each_slice(2)

  array_of_items_to_be_paired.each do |pairs|
    if pairs.length == 2
      my_array.push(pairs)
    else
      my_array.last.push(pairs[0])  # study this line
    end
  end
  my_array
end

print random_pair(test_array)
=end

# Note that in Josh's program, the names would be scrambled at this point,
# but leaving them ordered here for clarification's sake
array_of_items_to_be_paired = [["Abe","Bob"],["Carl","Dave"],["Ed"]]
my_array = []
count = 1

# Baseline value of my_array, which we'll use to create the desired program output
print "Value of my_array before if statement iteration: "
print my_array
2.times { print "\n" }

# Note that I used "inner_array" instead of "pairs" for the array item name just
# to clarify exactly what we are targeting, since the final inner array will not
# contain a pair of names if array_of_items_to_be_paired contains an odd number
# of names
array_of_items_to_be_paired.each do |inner_array|
  if inner_array.length == 2
    print "Value of inner_array from if statement interation #{count}: "
    print inner_array
    print "\n"
    my_array.push(inner_array)
    print "Value of my_array after if statement interation #{count}: "
    print my_array
    2.times { print "\n" }
    count += 1
  else
    print "(1) Value of inner_array from else statement: "
    print inner_array
    print "\n"
    print "(2) Value of inner_array contents via array index: "
    print inner_array[0]
    print "\n"
    print "(3) Value of last inner_array in my_array before else statement: "
    print my_array.last
    2.times { print "\n" }
    puts "Value of my_array after pushing inner_array contents (2) to last array in my_array (3):"
    my_array.last.push(inner_array[0])
    print my_array
    print "\n"
  end
end
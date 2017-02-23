# Print 1 ten times to the screen
puts "Print using .times method:"
10.times { puts 1 }
puts "\n"

# Print 1 - 10 to the screen
puts "Print 1 - 10 using while loop:"
n = 1
while n < 11
	puts n
	n += 1
end

# Print 1 - 100 to the screen
puts "Print 1 - 100 using until loop:"
i = 1
until i == 100
  puts i
  i += 1
end
puts i

# Print 1 - 100 to the screen, but...
# replace the number 5 with your favorite food
for num in 1..100
  if num == 5
  	puts "hotdog"
  else
    puts num
  end
end

# 
# In-Class Example to Reinforce Test Driven Developmet
#
# Function to populate an array with 1 - 100,
# replace numbers divisible by 3 with "Mined",
# replace numbers divisible by 5 with "Minds",
# and replace numbers divisible by 3 & 5 (15) with "Mined Minds"

def mined_minds_array()

	my_array = []
	num = 0

	100.times do
		num += 1
		if num % 3 == 0 && num % 5 == 0
			my_array.push("Mined Minds")
		elsif num % 3 == 0
			my_array.push("Mined")
		elsif num % 5 == 0
			my_array.push("Minds")
		else		
			my_array.push(num)
		end
	end

	return my_array

end

# print mined_minds_array()
# print "\n"
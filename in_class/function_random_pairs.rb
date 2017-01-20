# In-class example of random pairs

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

test_array = ["Abe","Bob","Carl","Dave","Ed"]
print random_pair(test_array)
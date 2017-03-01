# In-class demo of raffle ticket function
# Josh

def winning_number_include?(my_ticket, winning_tickets)
	# Works when ticket number is the only one in array
	# if my_ticket
	# 	return true
	# end
	#Using .include
	winning_tickets.include?(my_ticket)
end

def winning_number_each?(my_ticket, winning_tickets)
	# Define placeholder with value that condition should fail to (else)
	winner = false
	winning_tickets.each do |ticket|
		if my_ticket == ticket
			return true
		end
	end
return winner
end

# puts winning_number_include?('5423', ['5423'])
puts winning_number_each?('5423', ['5423'])
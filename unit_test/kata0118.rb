# Code to test
#
# Unit Test example
# Write code to test and make sure your code does what you say it does

=begin

# A method will always return the last item
# So to return 1, can use this:

def minedmindskata(parameter)
  1
end

# A method for returning whatever value is
# passed to the parameter

def minedmindskata(num)
  num
end
	
# Method for test 3
# Conditionally evaluate parameter value
def minedmindskata(num)
  if num == 3
    return "Mined"
  elsif num == 5
  	return "Minds"
  elsif num == 15
  	return "Mined Minds"
  else
    return num
  end
end

=end

# Need to call ("values") or return ("return values")
# Using "print values" or "puts values" will error on test
def minedmindskata()
  values = []
  (1..100).each { |num| values.push(num) }
  values.map! { |value| (value % 3 != 0 || value % 5 != 0) ? value : "Mined Minds" }
  values.map! { |value| value % 3 != 0 ? value : "Mined" }
  values.map! { |value| value % 5 != 0 ? value : "Minds" }
  values
end

minedmindskata()
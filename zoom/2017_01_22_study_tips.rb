# Writing multiple assertions in a single test is generally to be avoided

# First line of every test that Amanda writes begins with:
# results = "something"

# Every test needs to have an assert statement, or it is of no value

# The first thing that we pass in is what we are expecting
# The second thing is what we are running

# It's always good to begin a function name with a verb, since it's doing something
# For example, don't do this:

def something()  # function name is "something"
  something = [] # so is the variable name for the array = very ambiguous
end

# Try to avoid using the same name for each variable and function
# Helps you know what you are referring to, since it avoids ambiguity

# Always run the test before you write the code
# It should fail at that point
# If you *don't* get a failure at this point, that should tell you something

# At the end of the function use:  return "something"
# For example:

def create_array()
  something = []
  100.times do
    puts "words"
  end
  return something # don't forget to return the result
end

# Don't have to use the word "return" before "something", but makes it clearer
# what is being

# When developing a test, consider that you may not be able to see the output of a function
# With that in mind, what would you need to see (test) to make sure
# that the function is working as you expect

# Very common mistake is to increment within the else statement
# For example:

def create_array()
  something = []
  number = 1
  100.times do
    if number % 3 == 0
      something << "Mined"
    else
      something << number
      #number += 1 # wrong place
    end
    number += 1 # right place
  end
  return something
end
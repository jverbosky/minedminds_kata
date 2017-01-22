# Writing multiple assertions in a single test is generally to be avoided

# First line of every test that Amanda writes begins with:
# results = "something"
# For example:

def test_1_function_returns_array
  results = create_array() # results to test against
  assert_equal(Array,results.class)
end

# Every test *needs* to have an assert statement, or it is of no value

# The first thing that we pass in is what we are expecting
# The second thing is what we are running

# It's always good to begin a function name with a verb, since it's doing something
# And try to avoid using the same name for each variable and function
# Helps you know what you are referring to, since it avoids ambiguity
# For example, don't do this:

def something()  # function name is "something"
  something = [] # so is the variable name for the array = very ambiguous
end

# Always run the test before you write the code
# It should fail at that point
# If you *don't* get a failure at this point, that should tell you something isn't right

# At the end of the function use:  return "something"
# For example:

def create_array()
  something = []
  100.times do
    puts "words"
  end
  return something # don't forget to return the result
end

# Using the word "return" before "something" isn't required,
# but does help clarify what is being returned

# When developing a test, consider that you may not be able to see the output of a function
# With that in mind...
# When writing a test, consider what would you need to see (test) to make sure
# that the function is working as you expect

# A very common mistake is to increment within the else statement
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

# 2017-01-22 - jv
# Note: function incomplete, just proof of concept

# students = [
#       "Allen Weber",
#       "Brian Lewis",
#       "Cummie Washington",
#       "Dover Hellfeldt",  # comment out to test even
#       "Edwin Wells",
#       "Frank Mugo",
#       "Frank Coleman"
#     ]

def create_pairs(students)

  pairs = Array.new()
  students = students.shuffle

  (1..students.size()/2).each do |n|
    pairs.push([students[n - 10], students[n]])
  end

  return pairs

end

# print create_pairs(students)
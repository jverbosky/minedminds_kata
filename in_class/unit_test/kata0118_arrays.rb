# Create arrays (flat & multi-dimensional)
names = ["Larry", "Curly", "Moe", "Bob", "Carol"]
multi = [[1,2,3],[4,5,6],[7,8,9]]

# Return array elements
names[0]
multi[0][0]

names.first
multi.first
multi.first.first

# Array methods
# Adding an item to the end of an array
names.push("Snoopy")

# List the number of array items
names.count

# List all of the available methods for the object
names.methods

# List the object type
names.class

# Insert an element into the array at the specified index
names.insert(3, "Josh")

# Remove an element from the array at the specified index
names.delete_at(0)

# Replace an array element with the specified value
names[2] = "Amanda"


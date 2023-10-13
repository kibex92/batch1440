grades = [19, 8, 11, 15, 13]

sum = 0
grades.each do |grade|
  # Sumarize all numbers
  sum += grade
end

sum.to_f / grades.size

def capitalized(first_name, last_name)
  cap_first = first_name.capitalize
  cap_last = last_name.capitalize
  return "#{cap_first} #{cap_last}"
end

p capitalized("BenCE", "KiSS")

fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
fruits[1]
# Add an "apple" to the fruits array
fruits << "apple"
# Replace "watermelon" by "pear"
fruits[2] = "pear"
# Delete "orange"
fruits.delete("orange")
fruits.delete_at(3)

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
p city[:name]
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"
# Update the population to 2000001
city[:population] += 1
# What will the following code return?
city[:mayor] # nil

students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

student_hash = students.map do |name, age|
  {
    name: name,
    age: age
  }
end

p student_hash
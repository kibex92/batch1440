students =     [ "Peter", "Mary", "Lucas", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

# Peter is 24 years old, Mary is 25 years old etc.

students.each_with_index do |student, index|
  age = student_ages[index]
  puts "#{student} is #{age} years old"
end

# CRUD with Arrays

# READ

students =  [ "Peter", "Mary", "Lucas", "George", "Emma" ]
students[2] # => Lucas

# CREATE
students << "Adriana"

# UPDATE
students[0] = "Bence"

# DELETE
students.delete("George")
students.delete_at(3)
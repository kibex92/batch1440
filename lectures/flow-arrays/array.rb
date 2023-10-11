fruits = %w(apples apples mandarines bananas pears grapes)
# READ
fruits[0] # apples

# CREATE
fruits << "Pineapple"

# UPDATE
fruits[2] = "Mango"

# DELETE
fruits.delete("apples")
fruits.delete_at(1)

fruits.each do |x|
  puts "#{x} is tasty"
end
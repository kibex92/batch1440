# puts "What's your age?"
# age = gets.chomp.to_i

# if !age.odd?
#   puts "Your age is even!"
# end

# if age.even?
#   puts "Your age is even!"
# end

# puts "Your age is even!" if age.even?


# unless age.odd?
#   puts "Your age is even!"
# end

# CAN YOU VOTE

# puts "What's your age?"
# age = gets.chomp.to_i

# if age >= 18
#   puts "You can vote!"
# else
#   puts "You're too young, sorry!"
# end

# HEADS OR TAILS

# coin = ["heads", "tails"].sample
# puts "What's your choice?"
# choice = gets.chomp

# if coin == choice
#   puts "Wow you won!"
# else
#   puts "Sorry, you lost!"
# end

# <CONDITION> ? <TRUE CASE> : <FALSE CASE>

# result = coin == choice ? "Wow you won!" : "Sorry, you lost!"
# puts result 

# hour = 12

# if hour < 12
#   puts "Good morning!"
# elsif hour >= 20
#   puts "Good night!"
# elsif hour > 12
#   puts "Good afternoon!"
# else
#   puts "Lunch time!"
# end

# puts "What do you want to do? [READ|WRITE|EXIT]"
# answer = gets.chomp.upcase

# if answer == "READ"
#   puts "You are reading!"
# elsif answer == "WRITE"
#   puts "You are Writing"
# elsif answer == "EXIT"
#   puts "Bye"
# else
#   puts "Wrong input!"
# end

# case answer
# when "READ"
#   puts "You are reading!"
# when "WRITE"
#     puts "You are Writing"
# when "EXIT"
#   puts "bye"
# else
#   puts "Wrong input"
# end

# elegant_dress = false
# on_list = false

# FANCY CLUB

# if elegant_dress && on_list
#   puts "Welcome to the fancy club!"
# end

# CHILL CLUB
# if elegant_dress || on_list
#   puts "Welcome to the chill club!"
# end

# hour = 9

# if (hour >= 9 && hour < 12) || (hour >= 14 && hour <= 18)
#   puts "Open!"
# elsif hour >= 12 && hour < 14
#   puts "Lunch time!"
# else
#   puts "Closed!"
# end

# PRICE IS RIGHT

# price = rand(1..5)
# puts "What's your guess?"
# guess = gets.chomp.to_i

# while price != guess
#   puts "try again"
#   guess = gets.chomp.to_i
# end

# until price == guess
#   puts "try again"
#   guess = gets.chomp.to_i
# end

# loop do
  # break if something
# end

# puts "You won!"

# for x in ("a".."z")
#   puts x
# end
class SessionsView
  def ask_user_for(input)
    puts "What's the #{input}"
    gets.chomp
  end

  def wrong_credentials
    puts "Wrong credentials. Try again..."
  end
  
  def wrong_password
    puts "Wrong password. Try again..."
  end
  
end
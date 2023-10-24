class OrdersView
  def display(employees)
    employees.each_with_index do |employee, index|
      puts "#{index + 1}. #{employee.username}"
    end
  end
  
  def ask_user_for(input)
    puts "What's the #{input}"
    gets.chomp
  end

  def ask_user_for_index
    ask_user_for("number").to_i - 1
  end
end
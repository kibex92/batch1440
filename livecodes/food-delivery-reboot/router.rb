class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    while @running
      # Display the menu
      display_menu
      # get the user action
      action = user_action
      # dispatch action
      dispatch_action(action)
    end
  end

  def user_action
    puts "What do you want to do?"
    gets.chomp.to_i
  end
  
  def dispatch_action(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 0 then stop
    end
  end
  
  
  def display_menu
    puts "Welcome to the Food Delivery App!"
    puts "Here's what you can do:"
    puts "1 - Add a meal"
    puts "2 - List all meals"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "0 - Exit"
  end
  
  def stop
    @running = false
  end
end
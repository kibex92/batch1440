class Router
  def initialize(meals_controller,
                customers_controller,
                sessions_controller
  )
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    while @running
      # Display the menu
      # SIGN IN
      @employee = @sessions_controller.sign_in
      while @employee
        display_menu
        # get the user action
        action = user_action
        # dispatch action
        dispatch_action(action)
      end
    end
  end

  def user_action
    puts "What do you want to do?"
    gets.chomp.to_i
  end
  
  def dispatch_action(action)
    if @employee.manager?
      dispatch_manager_action(action)
    else
      dispatch_rider_action(action)
    end
  end
  
  def dispatch_manager_action(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then sign_out
    when 0 then stop
    end
  end
  
  def display_rider_action(action)
    puts "to do"
  end
  

  def display_menu
    if @employee.manager?
      display_manager_menu
    else
      display_rider_menu
    end
  end
  
  def display_manager_menu
    puts "Welcome to the Food Delivery App!"
    puts "Here's what you can do:"
    puts "1 - Add a meal"
    puts "2 - List all meals"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "9 - Sign out"
    puts "0 - Exit"
  end
  
  def display_rider_menu
    puts "to do"
  end

  def sign_out
    @employee = nil
  end
  

  def stop
    sign_out
    @running = false
  end
end
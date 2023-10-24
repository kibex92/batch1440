class Router
  def initialize(meals_controller,
                customers_controller,
                sessions_controller,
                orders_controller
  )
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @orders_controller = orders_controller
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
        print `clear`
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
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 5 then @orders_controller.add
    when 7 then sign_out
    when 8 then stop
    else puts "Try again..."
    end
  end
  
  def dispatch_rider_action(action)
    case action
    when 1 then @orders_controller.list_my_orders(@current_user)
    when 2 then @orders_controller.mark_as_delivered(@current_user)
    when 3 then sign_out
    when 4 then stop!
    else puts "Try again..."
    end
  end
  

  def display_menu
    if @employee.manager?
      display_manager_menu
    else
      display_rider_menu
    end
  end
  
  def display_manager_menu
    puts "--------------------"
    puts "------- MENU -------"
    puts "--------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Add new customer"
    puts "4. List all customers"
    puts "5. Add new order"
    puts "6. List all undelivered orders"
    puts "7. Logout"
    puts "8. Exit"
    print "> "
  end
  
  def display_rider_menu
    puts "--------------------"
    puts "------- MENU -------"
    puts "--------------------"
    puts "1. List my undelivered orders"
    puts "2. Mark order as delivered"
    puts "3. Logout"
    puts "4. Exit"
    print "> "
  end

  def sign_out
    @employee = nil
  end
  

  def stop
    sign_out
    @running = false
  end
end
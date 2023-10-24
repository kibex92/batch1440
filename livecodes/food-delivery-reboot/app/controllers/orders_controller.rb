require_relative '../views/customers_view'
require_relative '../views/meals_view'
require_relative '../views/orders_view'

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @order_repository = order_repository
  end

  def add
    # Display all meals
    meal = ask_user_for_meal
    customer = ask_user_for_customer
    employee = ask_user_for_employee
    order = Order.new(meal: meal, customer: customer, employee: employee)
    p order
    @order_repository.create(order)
    # Display all employees -> riders
    # Ask user for rider
    # Display all customers
    # Ask user for customer
    # Create the order
    # Send the order to the repo
  end

  private

  def ask_user_for_meal
    meals = @meal_repository.all
    # Ask user for meal
    MealsView.new.display(meals)
    index = MealsView.new.ask_user_for_index
    meals[index]
  end
  
  def ask_user_for_customer
    customers = @customer_repository.all
    # Ask user for meal
    CustomersView.new.display(customers)
    index = CustomersView.new.ask_user_for_index
    customers[index]
  end
  
  def ask_user_for_employee
    riders = @employee_repository.all_riders
    # Ask user for meal
    OrdersView.new.display(riders)
    index = OrdersView.new.ask_user_for_index
    riders[index]
  end
  
end
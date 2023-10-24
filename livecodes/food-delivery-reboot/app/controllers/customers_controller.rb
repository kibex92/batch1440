require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
  end
  
  def list
    # get the meals from the repo
    customers = @customer_repository.all
    # send the meals to the view
    @customers_view.display(customers)
  end

  def add
    # Ask the user for the meal name
    name = @customers_view.ask_user_for("name")
    # Ask the user for the meal price
    address = @customers_view.ask_user_for("address")
    # Create a meal
    customer = Customer.new(name: name, address: address)
    # Send meal to the repository
    @customer_repository.create(customer)
  end
end
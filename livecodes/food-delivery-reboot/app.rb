require_relative 'router'
require_relative 'app/controllers/meals_controller'
require_relative 'app/controllers/customers_controller'
require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'



customers_csv = "data/customers.csv"
customer_repo = CustomerRepository.new(customers_csv)
customers_controller = CustomersController.new(customer_repo)

meals_csv = "data/meals.csv"
meal_repository = MealRepository.new(meals_csv)
meals_controller = MealsController.new(meal_repository)
router = Router.new(meals_controller, customers_controller)
router.run

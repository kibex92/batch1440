require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end
  
  def list
    # get the meals from the repo
    meals = @meal_repository.all
    # send the meals to the view
    @meals_view.display(meals)
  end

  def add
    # Ask the user for the meal name
    name = @meals_view.ask_user_for("name")
    # Ask the user for the meal price
    price = @meals_view.ask_user_for_price
    # Create a meal
    meal = Meal.new(name: name, price: price)
    # Send meal to the repository
    @meal_repository.create(meal)
  end
end
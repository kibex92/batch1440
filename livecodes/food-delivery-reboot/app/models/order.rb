class Order
  attr_accessor :meal, :customer, :employee, :id

  def initialize(attr = {})
    @id = attr[:id]
    @meal = attr[:meal]
    @customer = attr[:customer]
    @employee = attr[:employee]
    @delivered = attr[:delivered] || false
  end

  def delivered?
    @delivered
  end
  
end
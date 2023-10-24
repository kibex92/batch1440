class Employee
  attr_reader :username, :password, :id, :role

  def initialize(attr = {})
    # STATE
    # - role
    # - username
    # - password
    # - id

    @id = attr[:id]
    @username = attr[:username]
    @password = attr[:password]
    @role = attr[:role]
    # BEHAVIOR
    # - check orders
    # - mark orders as delivered
  end

  def manager?
    @role == "manager"
  end
  
end
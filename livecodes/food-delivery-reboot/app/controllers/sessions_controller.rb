require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repo)
    # STATE
    # - employee repo
    # - sessions_view
    @employee_repo = employee_repo
    @sessions_view = SessionsView.new
  end

  def sign_in
    # Ask the user for a username
    username = @sessions_view.ask_user_for("username")
    # Ask the user for a password
    password = @sessions_view.ask_user_for("password")
    # Find the employee with the username
    employee = @employee_repo.find_by_username(username)

    if employee
      if employee.password == password
        return employee
      else
        
        @sessions_view.wrong_password
        sign_in
      end
    else
      @sessions_view.wrong_credentials
      sign_in
    end
    # Check if password matches
    # if yes -> successfull login
    # if not -> Check your credentials
  end
end

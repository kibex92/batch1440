class Patient
  # STATE
  # - cured
  # - name
  # - age
  # - medical preconditions
  # - allergies
  attr_reader :name, :age
  attr_accessor :room, :id

  def initialize(attributes = {})
    @name = attributes[:name]
    @age = attributes[:age]
    @cured = attributes[:cured] || false
    @room = attributes[:room]
    @id = attributes[:id]
  end
  # BEHAVIOUR
  # - cure!
  # - discharge

  def cure!
    @cured = true
  end

  def cured?
    @cured
  end
end
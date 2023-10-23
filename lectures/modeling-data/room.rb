class Room
  attr_reader :name, :patients, :capacity
  attr_accessor :id

  def initialize(attributes = {})
    # STATE
    # - name
    # - floor
    # - department
    # - capacity
    # - staff
    # - patients
    @name = attributes[:name]
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
    @id = attributes[:id]
    # BEHAVIOUR
    # - full?
    # - print_info
    # - is_clean?
    # - check_type
    # - add_patient
  end

  def add_patient(patient)
    if full?
      raise StandardError, "The room is full"
    else
      patient.room = self
      @patients << patient
    end
  end

  def full?
    @patients.size >= @capacity
  end
end
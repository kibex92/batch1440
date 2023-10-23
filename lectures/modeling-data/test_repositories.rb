require_relative 'patient_repository'
require_relative 'room_repository'
require_relative 'patient'


room_repo = RoomRepository.new("rooms.csv")
patient_repo = PatientRepository.new("patients.csv", room_repo)

boris = Patient.new(name: "Boris", age: 25)
lucas = Patient.new(name: "Lucas", age: 25)
patient_repo.create(boris)
patient_repo.create(lucas)
p patient_repo
require_relative 'room'
require 'csv'

class RoomRepository
  def initialize(csv_file_path)
    @rooms = []
    @csv_file_path = csv_file_path
    load_csv
  end

  def find(id)
    @rooms.find { |room| room.id == id }
  end

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i
      room = Room.new(row) # -> Room.new(name: ..., age: ...)

      @rooms << room
    end
  end
end
require './lib/bike'

class DockingStation
  attr_reader :bike_count

  def initialize
    @bike_count = 0
  end

  def release_bike
    if @bike_count < 1
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock_bike
    if @bike_count == 1
      raise "Station is full"
    else
      @bike_count += 1
    end
  end

end

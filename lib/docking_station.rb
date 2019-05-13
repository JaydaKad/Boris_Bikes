require './lib/bike'

class DockingStation
  attr_reader :bike_count

  def initialize
    @bike_count = []
  end

  def release_bike
    if @bike_count.length < 1
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock_bike
    if @bike_count.length >= 20
      raise "Station is full"
    else
      @bike_count += 1
    end
  end

end
